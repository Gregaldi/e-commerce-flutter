part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.success(List<ProductResponseModel> events) =
      _Success;
  const factory ProductState.detailsuccessproduct(ProductResponseModel events) =
      _SuccessDetailProduct;
  const factory ProductState.error(String message) = _Error;
}
