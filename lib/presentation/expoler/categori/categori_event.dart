part of 'categori_bloc.dart';

@freezed
class CategoriEvent with _$CategoriEvent {
  const factory CategoriEvent.started() = _Started;
  const factory CategoriEvent.getCategories() = _GetEventCategories;

}