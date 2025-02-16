part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.addToCart(CartProductResponseModel cart) = _AddtoCart;
  const factory CartEvent.getCart() = _GetCart;
  const factory CartEvent.removeCart(CartProductResponseModel cart) = _RemovetoCart;
  const factory CartEvent.removeCartAll() = _RemovetoCartAll;
  const factory CartEvent.updateCart(CartProductResponseModel cart) = _UpdateCart;
}