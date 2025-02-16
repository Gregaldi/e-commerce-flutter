import 'package:bloc/bloc.dart';
import 'package:ecommerce/data/datasource/event_category_remote_datasource.dart';
import 'package:ecommerce/data/model/response/categori_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categori_event.dart';
part 'categori_state.dart';
part 'categori_bloc.freezed.dart';

class CategoriBloc extends Bloc<CategoriEvent, CategoriState> {
  final EventCategoryRemoteDatasource datasource;

  CategoriBloc(this.datasource) : super(_Initial()) {
    on<CategoriEvent>((event, emit) async {
      // TODO: implement event handler
      emit(const _Loading());
      final result = await datasource.getEventCategories();
      result.fold((l) {
        emit(_Error(l));
      }, (r) {
        emit(_Success(r));
      });
    });
  }
}
