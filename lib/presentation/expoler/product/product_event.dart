part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.getProduct(String query) = _GetProduct;
  const factory ProductEvent.searchProduct(String query) = _SearchProduct;
  const factory ProductEvent.getProductById(String category) =
      _GetProductById;
  const factory ProductEvent.fetchAllFromState() = _FetchAllFromState;
}