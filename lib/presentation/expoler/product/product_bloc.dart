import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:ecommerce/data/datasource/event_remote_datasource.dart';
import 'package:ecommerce/data/model/response/product_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final EventRemoteDatasource datasource;
  List<ProductResponseModel> product = [];
  EventTransformer<E> droppable<E>() {
    return (events, mapper) {
      return events.transform(
        StreamTransformer.fromBind(
            (eventStream) => eventStream.asyncExpand(mapper).take(1)),
      );
    };
  }

  ProductBloc(this.datasource) : super(_Initial()) {
    on<_SearchProduct>((event, emit) {
      // TODO: implement event handler
      emit(const _Loading());
      final newEvents = product
          .where((element) =>
              element.title!.toLowerCase().contains(event.query.toLowerCase()))
          .toList();

      emit(_Success(newEvents));
    });
    on<_FetchAllFromState>((event, emit) async {
      emit(const _Loading());
      emit(_Success(product));
    });
    on<_GetProduct>(
      (event, emit) async {
        emit(const _Loading());
        final result = await datasource.getProduct(event.query);
        result.fold(
          (l) => emit(_Error(l)),
          (r) {
            product = r;
            log("Loaded events: ${product.length}");
            emit(_Success(r));
          },
        );
      },
      transformer: droppable(),
    );
    on<_GetProductById>(
      (event, emit) async {
        emit(const _Loading());
        final result = await datasource.getProductById(event.category);
        result.fold(
          (l) => emit(_Error(l)),
          (r) {
            log("Loaded events: ${product.length}");
            emit(_SuccessDetailProduct(r));
          },
        );
      },
      transformer: droppable(),
    );
    on<ProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
