// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartProductResponseModel cart) addToCart,
    required TResult Function() getCart,
    required TResult Function(CartProductResponseModel cart) removeCart,
    required TResult Function() removeCartAll,
    required TResult Function(CartProductResponseModel cart) updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartProductResponseModel cart)? addToCart,
    TResult? Function()? getCart,
    TResult? Function(CartProductResponseModel cart)? removeCart,
    TResult? Function()? removeCartAll,
    TResult? Function(CartProductResponseModel cart)? updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartProductResponseModel cart)? addToCart,
    TResult Function()? getCart,
    TResult Function(CartProductResponseModel cart)? removeCart,
    TResult Function()? removeCartAll,
    TResult Function(CartProductResponseModel cart)? updateCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddtoCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemovetoCart value) removeCart,
    required TResult Function(_RemovetoCartAll value) removeCartAll,
    required TResult Function(_UpdateCart value) updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddtoCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemovetoCart value)? removeCart,
    TResult? Function(_RemovetoCartAll value)? removeCartAll,
    TResult? Function(_UpdateCart value)? updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddtoCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemovetoCart value)? removeCart,
    TResult Function(_RemovetoCartAll value)? removeCartAll,
    TResult Function(_UpdateCart value)? updateCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CartEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartProductResponseModel cart) addToCart,
    required TResult Function() getCart,
    required TResult Function(CartProductResponseModel cart) removeCart,
    required TResult Function() removeCartAll,
    required TResult Function(CartProductResponseModel cart) updateCart,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartProductResponseModel cart)? addToCart,
    TResult? Function()? getCart,
    TResult? Function(CartProductResponseModel cart)? removeCart,
    TResult? Function()? removeCartAll,
    TResult? Function(CartProductResponseModel cart)? updateCart,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartProductResponseModel cart)? addToCart,
    TResult Function()? getCart,
    TResult Function(CartProductResponseModel cart)? removeCart,
    TResult Function()? removeCartAll,
    TResult Function(CartProductResponseModel cart)? updateCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddtoCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemovetoCart value) removeCart,
    required TResult Function(_RemovetoCartAll value) removeCartAll,
    required TResult Function(_UpdateCart value) updateCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddtoCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemovetoCart value)? removeCart,
    TResult? Function(_RemovetoCartAll value)? removeCartAll,
    TResult? Function(_UpdateCart value)? updateCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddtoCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemovetoCart value)? removeCart,
    TResult Function(_RemovetoCartAll value)? removeCartAll,
    TResult Function(_UpdateCart value)? updateCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddtoCartImplCopyWith<$Res> {
  factory _$$AddtoCartImplCopyWith(
          _$AddtoCartImpl value, $Res Function(_$AddtoCartImpl) then) =
      __$$AddtoCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartProductResponseModel cart});
}

/// @nodoc
class __$$AddtoCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddtoCartImpl>
    implements _$$AddtoCartImplCopyWith<$Res> {
  __$$AddtoCartImplCopyWithImpl(
      _$AddtoCartImpl _value, $Res Function(_$AddtoCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$AddtoCartImpl(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartProductResponseModel,
    ));
  }
}

/// @nodoc

class _$AddtoCartImpl implements _AddtoCart {
  const _$AddtoCartImpl(this.cart);

  @override
  final CartProductResponseModel cart;

  @override
  String toString() {
    return 'CartEvent.addToCart(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddtoCartImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddtoCartImplCopyWith<_$AddtoCartImpl> get copyWith =>
      __$$AddtoCartImplCopyWithImpl<_$AddtoCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartProductResponseModel cart) addToCart,
    required TResult Function() getCart,
    required TResult Function(CartProductResponseModel cart) removeCart,
    required TResult Function() removeCartAll,
    required TResult Function(CartProductResponseModel cart) updateCart,
  }) {
    return addToCart(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartProductResponseModel cart)? addToCart,
    TResult? Function()? getCart,
    TResult? Function(CartProductResponseModel cart)? removeCart,
    TResult? Function()? removeCartAll,
    TResult? Function(CartProductResponseModel cart)? updateCart,
  }) {
    return addToCart?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartProductResponseModel cart)? addToCart,
    TResult Function()? getCart,
    TResult Function(CartProductResponseModel cart)? removeCart,
    TResult Function()? removeCartAll,
    TResult Function(CartProductResponseModel cart)? updateCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddtoCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemovetoCart value) removeCart,
    required TResult Function(_RemovetoCartAll value) removeCartAll,
    required TResult Function(_UpdateCart value) updateCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddtoCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemovetoCart value)? removeCart,
    TResult? Function(_RemovetoCartAll value)? removeCartAll,
    TResult? Function(_UpdateCart value)? updateCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddtoCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemovetoCart value)? removeCart,
    TResult Function(_RemovetoCartAll value)? removeCartAll,
    TResult Function(_UpdateCart value)? updateCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddtoCart implements CartEvent {
  const factory _AddtoCart(final CartProductResponseModel cart) =
      _$AddtoCartImpl;

  CartProductResponseModel get cart;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddtoCartImplCopyWith<_$AddtoCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartImplCopyWith<$Res> {
  factory _$$GetCartImplCopyWith(
          _$GetCartImpl value, $Res Function(_$GetCartImpl) then) =
      __$$GetCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartImpl>
    implements _$$GetCartImplCopyWith<$Res> {
  __$$GetCartImplCopyWithImpl(
      _$GetCartImpl _value, $Res Function(_$GetCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCartImpl implements _GetCart {
  const _$GetCartImpl();

  @override
  String toString() {
    return 'CartEvent.getCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartProductResponseModel cart) addToCart,
    required TResult Function() getCart,
    required TResult Function(CartProductResponseModel cart) removeCart,
    required TResult Function() removeCartAll,
    required TResult Function(CartProductResponseModel cart) updateCart,
  }) {
    return getCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartProductResponseModel cart)? addToCart,
    TResult? Function()? getCart,
    TResult? Function(CartProductResponseModel cart)? removeCart,
    TResult? Function()? removeCartAll,
    TResult? Function(CartProductResponseModel cart)? updateCart,
  }) {
    return getCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartProductResponseModel cart)? addToCart,
    TResult Function()? getCart,
    TResult Function(CartProductResponseModel cart)? removeCart,
    TResult Function()? removeCartAll,
    TResult Function(CartProductResponseModel cart)? updateCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddtoCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemovetoCart value) removeCart,
    required TResult Function(_RemovetoCartAll value) removeCartAll,
    required TResult Function(_UpdateCart value) updateCart,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddtoCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemovetoCart value)? removeCart,
    TResult? Function(_RemovetoCartAll value)? removeCartAll,
    TResult? Function(_UpdateCart value)? updateCart,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddtoCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemovetoCart value)? removeCart,
    TResult Function(_RemovetoCartAll value)? removeCartAll,
    TResult Function(_UpdateCart value)? updateCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class _GetCart implements CartEvent {
  const factory _GetCart() = _$GetCartImpl;
}

/// @nodoc
abstract class _$$RemovetoCartImplCopyWith<$Res> {
  factory _$$RemovetoCartImplCopyWith(
          _$RemovetoCartImpl value, $Res Function(_$RemovetoCartImpl) then) =
      __$$RemovetoCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartProductResponseModel cart});
}

/// @nodoc
class __$$RemovetoCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemovetoCartImpl>
    implements _$$RemovetoCartImplCopyWith<$Res> {
  __$$RemovetoCartImplCopyWithImpl(
      _$RemovetoCartImpl _value, $Res Function(_$RemovetoCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$RemovetoCartImpl(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartProductResponseModel,
    ));
  }
}

/// @nodoc

class _$RemovetoCartImpl implements _RemovetoCart {
  const _$RemovetoCartImpl(this.cart);

  @override
  final CartProductResponseModel cart;

  @override
  String toString() {
    return 'CartEvent.removeCart(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovetoCartImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovetoCartImplCopyWith<_$RemovetoCartImpl> get copyWith =>
      __$$RemovetoCartImplCopyWithImpl<_$RemovetoCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartProductResponseModel cart) addToCart,
    required TResult Function() getCart,
    required TResult Function(CartProductResponseModel cart) removeCart,
    required TResult Function() removeCartAll,
    required TResult Function(CartProductResponseModel cart) updateCart,
  }) {
    return removeCart(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartProductResponseModel cart)? addToCart,
    TResult? Function()? getCart,
    TResult? Function(CartProductResponseModel cart)? removeCart,
    TResult? Function()? removeCartAll,
    TResult? Function(CartProductResponseModel cart)? updateCart,
  }) {
    return removeCart?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartProductResponseModel cart)? addToCart,
    TResult Function()? getCart,
    TResult Function(CartProductResponseModel cart)? removeCart,
    TResult Function()? removeCartAll,
    TResult Function(CartProductResponseModel cart)? updateCart,
    required TResult orElse(),
  }) {
    if (removeCart != null) {
      return removeCart(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddtoCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemovetoCart value) removeCart,
    required TResult Function(_RemovetoCartAll value) removeCartAll,
    required TResult Function(_UpdateCart value) updateCart,
  }) {
    return removeCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddtoCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemovetoCart value)? removeCart,
    TResult? Function(_RemovetoCartAll value)? removeCartAll,
    TResult? Function(_UpdateCart value)? updateCart,
  }) {
    return removeCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddtoCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemovetoCart value)? removeCart,
    TResult Function(_RemovetoCartAll value)? removeCartAll,
    TResult Function(_UpdateCart value)? updateCart,
    required TResult orElse(),
  }) {
    if (removeCart != null) {
      return removeCart(this);
    }
    return orElse();
  }
}

abstract class _RemovetoCart implements CartEvent {
  const factory _RemovetoCart(final CartProductResponseModel cart) =
      _$RemovetoCartImpl;

  CartProductResponseModel get cart;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemovetoCartImplCopyWith<_$RemovetoCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovetoCartAllImplCopyWith<$Res> {
  factory _$$RemovetoCartAllImplCopyWith(_$RemovetoCartAllImpl value,
          $Res Function(_$RemovetoCartAllImpl) then) =
      __$$RemovetoCartAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemovetoCartAllImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemovetoCartAllImpl>
    implements _$$RemovetoCartAllImplCopyWith<$Res> {
  __$$RemovetoCartAllImplCopyWithImpl(
      _$RemovetoCartAllImpl _value, $Res Function(_$RemovetoCartAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemovetoCartAllImpl implements _RemovetoCartAll {
  const _$RemovetoCartAllImpl();

  @override
  String toString() {
    return 'CartEvent.removeCartAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemovetoCartAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartProductResponseModel cart) addToCart,
    required TResult Function() getCart,
    required TResult Function(CartProductResponseModel cart) removeCart,
    required TResult Function() removeCartAll,
    required TResult Function(CartProductResponseModel cart) updateCart,
  }) {
    return removeCartAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartProductResponseModel cart)? addToCart,
    TResult? Function()? getCart,
    TResult? Function(CartProductResponseModel cart)? removeCart,
    TResult? Function()? removeCartAll,
    TResult? Function(CartProductResponseModel cart)? updateCart,
  }) {
    return removeCartAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartProductResponseModel cart)? addToCart,
    TResult Function()? getCart,
    TResult Function(CartProductResponseModel cart)? removeCart,
    TResult Function()? removeCartAll,
    TResult Function(CartProductResponseModel cart)? updateCart,
    required TResult orElse(),
  }) {
    if (removeCartAll != null) {
      return removeCartAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddtoCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemovetoCart value) removeCart,
    required TResult Function(_RemovetoCartAll value) removeCartAll,
    required TResult Function(_UpdateCart value) updateCart,
  }) {
    return removeCartAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddtoCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemovetoCart value)? removeCart,
    TResult? Function(_RemovetoCartAll value)? removeCartAll,
    TResult? Function(_UpdateCart value)? updateCart,
  }) {
    return removeCartAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddtoCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemovetoCart value)? removeCart,
    TResult Function(_RemovetoCartAll value)? removeCartAll,
    TResult Function(_UpdateCart value)? updateCart,
    required TResult orElse(),
  }) {
    if (removeCartAll != null) {
      return removeCartAll(this);
    }
    return orElse();
  }
}

abstract class _RemovetoCartAll implements CartEvent {
  const factory _RemovetoCartAll() = _$RemovetoCartAllImpl;
}

/// @nodoc
abstract class _$$UpdateCartImplCopyWith<$Res> {
  factory _$$UpdateCartImplCopyWith(
          _$UpdateCartImpl value, $Res Function(_$UpdateCartImpl) then) =
      __$$UpdateCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartProductResponseModel cart});
}

/// @nodoc
class __$$UpdateCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartImpl>
    implements _$$UpdateCartImplCopyWith<$Res> {
  __$$UpdateCartImplCopyWithImpl(
      _$UpdateCartImpl _value, $Res Function(_$UpdateCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$UpdateCartImpl(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartProductResponseModel,
    ));
  }
}

/// @nodoc

class _$UpdateCartImpl implements _UpdateCart {
  const _$UpdateCartImpl(this.cart);

  @override
  final CartProductResponseModel cart;

  @override
  String toString() {
    return 'CartEvent.updateCart(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartImplCopyWith<_$UpdateCartImpl> get copyWith =>
      __$$UpdateCartImplCopyWithImpl<_$UpdateCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartProductResponseModel cart) addToCart,
    required TResult Function() getCart,
    required TResult Function(CartProductResponseModel cart) removeCart,
    required TResult Function() removeCartAll,
    required TResult Function(CartProductResponseModel cart) updateCart,
  }) {
    return updateCart(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartProductResponseModel cart)? addToCart,
    TResult? Function()? getCart,
    TResult? Function(CartProductResponseModel cart)? removeCart,
    TResult? Function()? removeCartAll,
    TResult? Function(CartProductResponseModel cart)? updateCart,
  }) {
    return updateCart?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartProductResponseModel cart)? addToCart,
    TResult Function()? getCart,
    TResult Function(CartProductResponseModel cart)? removeCart,
    TResult Function()? removeCartAll,
    TResult Function(CartProductResponseModel cart)? updateCart,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddtoCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_RemovetoCart value) removeCart,
    required TResult Function(_RemovetoCartAll value) removeCartAll,
    required TResult Function(_UpdateCart value) updateCart,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddtoCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_RemovetoCart value)? removeCart,
    TResult? Function(_RemovetoCartAll value)? removeCartAll,
    TResult? Function(_UpdateCart value)? updateCart,
  }) {
    return updateCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddtoCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_RemovetoCart value)? removeCart,
    TResult Function(_RemovetoCartAll value)? removeCartAll,
    TResult Function(_UpdateCart value)? updateCart,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class _UpdateCart implements CartEvent {
  const factory _UpdateCart(final CartProductResponseModel cart) =
      _$UpdateCartImpl;

  CartProductResponseModel get cart;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCartImplCopyWith<_$UpdateCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartProductResponseModel> model) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartProductResponseModel> model)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProductResponseModel> model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartProductResponseModel> model) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartProductResponseModel> model)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProductResponseModel> model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartProductResponseModel> model) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartProductResponseModel> model)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProductResponseModel> model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartProductResponseModel> model});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$LoadedImpl(
      null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<CartProductResponseModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<CartProductResponseModel> model)
      : _model = model;

  final List<CartProductResponseModel> _model;
  @override
  List<CartProductResponseModel> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  String toString() {
    return 'CartState.loaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._model, _model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_model));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartProductResponseModel> model) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartProductResponseModel> model)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProductResponseModel> model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded(final List<CartProductResponseModel> model) =
      _$LoadedImpl;

  List<CartProductResponseModel> get model;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartProductResponseModel> model) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartProductResponseModel> model)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartProductResponseModel> model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CartState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
