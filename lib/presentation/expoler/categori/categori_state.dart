part of 'categori_bloc.dart';

@freezed
class CategoriState with _$CategoriState {
  const factory CategoriState.initial() = _Initial;
  const factory CategoriState.loading() = _Loading;
  const factory CategoriState.success(List<String> events) = _Success;
  const factory CategoriState.error(String message) = _Error;
}
