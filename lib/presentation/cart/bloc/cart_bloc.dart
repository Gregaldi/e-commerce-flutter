import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:ecommerce/data/datasource/cart_local_datasource.dart';
import 'package:ecommerce/data/model/response/cart_product_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartLocalDatasource datasource;
  List<CartProductResponseModel> cartProduct = [];
  EventTransformer<E> droppable<E>() {
    return (events, mapper) {
      return events.transform(
        StreamTransformer.fromBind(
            (eventStream) => eventStream.asyncExpand(mapper).take(1)),
      );
    };
  }

  CartBloc(this.datasource) : super(_Initial()) {
    on<_AddtoCart>((event, emit) async {
      emit(const _Loading());
      await datasource.addToCart(event.cart);
      final newCart = await datasource.getCartItems();
      cartProduct = newCart;
      emit(_Loaded(newCart));
    });
    on<_RemovetoCartAll>((event, emit) async {
      emit(const _Loading());
      await datasource.clearCart();
      final newCart = await datasource.getCartItems();
      cartProduct = newCart;
      emit(_Loaded(newCart));
    });
    on<_GetCart>((event, emit) async {
      emit(const _Loading());
      final newCart = await datasource.getCartItems();
      cartProduct = newCart;
      emit(_Loaded(newCart));
    });
    on<_RemovetoCart>((event, emit) async {
      emit(const _Loading());
      await datasource.removeFromCart(int.parse(event.cart.id!));
      final newCart = await datasource.getCartItems();
      cartProduct = newCart;
      emit(_Loaded(newCart));
    });

    on<_UpdateCart>((event, emit) async {
      emit(const _Loading());
      log("update cart");
      log("update cart id ${event.cart.id}");
      log("update cart quantity ${event.cart.quantity}");
      await datasource.updateQuantity(
        int.parse(event.cart.id!),
        event.cart.quantity!,
      );
      final newCart = await datasource.getCartItems();
      cartProduct = newCart;
      emit(_Loaded(newCart));
    });

    on<CartEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
