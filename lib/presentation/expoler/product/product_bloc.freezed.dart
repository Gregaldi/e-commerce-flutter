// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) getProduct,
    required TResult Function(String query) searchProduct,
    required TResult Function(String category) getProductById,
    required TResult Function() fetchAllFromState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? getProduct,
    TResult? Function(String query)? searchProduct,
    TResult? Function(String category)? getProductById,
    TResult? Function()? fetchAllFromState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? getProduct,
    TResult Function(String query)? searchProduct,
    TResult Function(String category)? getProductById,
    TResult Function()? fetchAllFromState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_FetchAllFromState value) fetchAllFromState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_FetchAllFromState value)? fetchAllFromState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_FetchAllFromState value)? fetchAllFromState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
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
    extends _$ProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductEvent.started()';
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
    required TResult Function(String query) getProduct,
    required TResult Function(String query) searchProduct,
    required TResult Function(String category) getProductById,
    required TResult Function() fetchAllFromState,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? getProduct,
    TResult? Function(String query)? searchProduct,
    TResult? Function(String category)? getProductById,
    TResult? Function()? fetchAllFromState,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? getProduct,
    TResult Function(String query)? searchProduct,
    TResult Function(String category)? getProductById,
    TResult Function()? fetchAllFromState,
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
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_FetchAllFromState value) fetchAllFromState,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_FetchAllFromState value)? fetchAllFromState,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_FetchAllFromState value)? fetchAllFromState,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProductImplCopyWith<$Res> {
  factory _$$GetProductImplCopyWith(
          _$GetProductImpl value, $Res Function(_$GetProductImpl) then) =
      __$$GetProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$GetProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductImpl>
    implements _$$GetProductImplCopyWith<$Res> {
  __$$GetProductImplCopyWithImpl(
      _$GetProductImpl _value, $Res Function(_$GetProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GetProductImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductImpl implements _GetProduct {
  const _$GetProductImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductEvent.getProduct(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductImplCopyWith<_$GetProductImpl> get copyWith =>
      __$$GetProductImplCopyWithImpl<_$GetProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) getProduct,
    required TResult Function(String query) searchProduct,
    required TResult Function(String category) getProductById,
    required TResult Function() fetchAllFromState,
  }) {
    return getProduct(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? getProduct,
    TResult? Function(String query)? searchProduct,
    TResult? Function(String category)? getProductById,
    TResult? Function()? fetchAllFromState,
  }) {
    return getProduct?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? getProduct,
    TResult Function(String query)? searchProduct,
    TResult Function(String category)? getProductById,
    TResult Function()? fetchAllFromState,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_FetchAllFromState value) fetchAllFromState,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_FetchAllFromState value)? fetchAllFromState,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_FetchAllFromState value)? fetchAllFromState,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class _GetProduct implements ProductEvent {
  const factory _GetProduct(final String query) = _$GetProductImpl;

  String get query;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductImplCopyWith<_$GetProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductImplCopyWith<$Res> {
  factory _$$SearchProductImplCopyWith(
          _$SearchProductImpl value, $Res Function(_$SearchProductImpl) then) =
      __$$SearchProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SearchProductImpl>
    implements _$$SearchProductImplCopyWith<$Res> {
  __$$SearchProductImplCopyWithImpl(
      _$SearchProductImpl _value, $Res Function(_$SearchProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchProductImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductImpl implements _SearchProduct {
  const _$SearchProductImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductEvent.searchProduct(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      __$$SearchProductImplCopyWithImpl<_$SearchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) getProduct,
    required TResult Function(String query) searchProduct,
    required TResult Function(String category) getProductById,
    required TResult Function() fetchAllFromState,
  }) {
    return searchProduct(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? getProduct,
    TResult? Function(String query)? searchProduct,
    TResult? Function(String category)? getProductById,
    TResult? Function()? fetchAllFromState,
  }) {
    return searchProduct?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? getProduct,
    TResult Function(String query)? searchProduct,
    TResult Function(String category)? getProductById,
    TResult Function()? fetchAllFromState,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_FetchAllFromState value) fetchAllFromState,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_FetchAllFromState value)? fetchAllFromState,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_FetchAllFromState value)? fetchAllFromState,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class _SearchProduct implements ProductEvent {
  const factory _SearchProduct(final String query) = _$SearchProductImpl;

  String get query;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductByIdImplCopyWith<$Res> {
  factory _$$GetProductByIdImplCopyWith(_$GetProductByIdImpl value,
          $Res Function(_$GetProductByIdImpl) then) =
      __$$GetProductByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$GetProductByIdImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductByIdImpl>
    implements _$$GetProductByIdImplCopyWith<$Res> {
  __$$GetProductByIdImplCopyWithImpl(
      _$GetProductByIdImpl _value, $Res Function(_$GetProductByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$GetProductByIdImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductByIdImpl implements _GetProductById {
  const _$GetProductByIdImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'ProductEvent.getProductById(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductByIdImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductByIdImplCopyWith<_$GetProductByIdImpl> get copyWith =>
      __$$GetProductByIdImplCopyWithImpl<_$GetProductByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) getProduct,
    required TResult Function(String query) searchProduct,
    required TResult Function(String category) getProductById,
    required TResult Function() fetchAllFromState,
  }) {
    return getProductById(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? getProduct,
    TResult? Function(String query)? searchProduct,
    TResult? Function(String category)? getProductById,
    TResult? Function()? fetchAllFromState,
  }) {
    return getProductById?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? getProduct,
    TResult Function(String query)? searchProduct,
    TResult Function(String category)? getProductById,
    TResult Function()? fetchAllFromState,
    required TResult orElse(),
  }) {
    if (getProductById != null) {
      return getProductById(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_FetchAllFromState value) fetchAllFromState,
  }) {
    return getProductById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_FetchAllFromState value)? fetchAllFromState,
  }) {
    return getProductById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_FetchAllFromState value)? fetchAllFromState,
    required TResult orElse(),
  }) {
    if (getProductById != null) {
      return getProductById(this);
    }
    return orElse();
  }
}

abstract class _GetProductById implements ProductEvent {
  const factory _GetProductById(final String category) = _$GetProductByIdImpl;

  String get category;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductByIdImplCopyWith<_$GetProductByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllFromStateImplCopyWith<$Res> {
  factory _$$FetchAllFromStateImplCopyWith(_$FetchAllFromStateImpl value,
          $Res Function(_$FetchAllFromStateImpl) then) =
      __$$FetchAllFromStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllFromStateImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchAllFromStateImpl>
    implements _$$FetchAllFromStateImplCopyWith<$Res> {
  __$$FetchAllFromStateImplCopyWithImpl(_$FetchAllFromStateImpl _value,
      $Res Function(_$FetchAllFromStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllFromStateImpl implements _FetchAllFromState {
  const _$FetchAllFromStateImpl();

  @override
  String toString() {
    return 'ProductEvent.fetchAllFromState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllFromStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) getProduct,
    required TResult Function(String query) searchProduct,
    required TResult Function(String category) getProductById,
    required TResult Function() fetchAllFromState,
  }) {
    return fetchAllFromState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? getProduct,
    TResult? Function(String query)? searchProduct,
    TResult? Function(String category)? getProductById,
    TResult? Function()? fetchAllFromState,
  }) {
    return fetchAllFromState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? getProduct,
    TResult Function(String query)? searchProduct,
    TResult Function(String category)? getProductById,
    TResult Function()? fetchAllFromState,
    required TResult orElse(),
  }) {
    if (fetchAllFromState != null) {
      return fetchAllFromState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_FetchAllFromState value) fetchAllFromState,
  }) {
    return fetchAllFromState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_FetchAllFromState value)? fetchAllFromState,
  }) {
    return fetchAllFromState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_FetchAllFromState value)? fetchAllFromState,
    required TResult orElse(),
  }) {
    if (fetchAllFromState != null) {
      return fetchAllFromState(this);
    }
    return orElse();
  }
}

abstract class _FetchAllFromState implements ProductEvent {
  const factory _FetchAllFromState() = _$FetchAllFromStateImpl;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductResponseModel> events) success,
    required TResult Function(ProductResponseModel events) detailsuccessproduct,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductResponseModel> events)? success,
    TResult? Function(ProductResponseModel events)? detailsuccessproduct,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductResponseModel> events)? success,
    TResult Function(ProductResponseModel events)? detailsuccessproduct,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDetailProduct value) detailsuccessproduct,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
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
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
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
    required TResult Function(List<ProductResponseModel> events) success,
    required TResult Function(ProductResponseModel events) detailsuccessproduct,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductResponseModel> events)? success,
    TResult? Function(ProductResponseModel events)? detailsuccessproduct,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductResponseModel> events)? success,
    TResult Function(ProductResponseModel events)? detailsuccessproduct,
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
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDetailProduct value) detailsuccessproduct,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
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
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
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
    required TResult Function(List<ProductResponseModel> events) success,
    required TResult Function(ProductResponseModel events) detailsuccessproduct,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductResponseModel> events)? success,
    TResult? Function(ProductResponseModel events)? detailsuccessproduct,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductResponseModel> events)? success,
    TResult Function(ProductResponseModel events)? detailsuccessproduct,
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
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDetailProduct value) detailsuccessproduct,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductResponseModel> events});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$SuccessImpl(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<ProductResponseModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<ProductResponseModel> events)
      : _events = events;

  final List<ProductResponseModel> _events;
  @override
  List<ProductResponseModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'ProductState.success(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductResponseModel> events) success,
    required TResult Function(ProductResponseModel events) detailsuccessproduct,
    required TResult Function(String message) error,
  }) {
    return success(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductResponseModel> events)? success,
    TResult? Function(ProductResponseModel events)? detailsuccessproduct,
    TResult? Function(String message)? error,
  }) {
    return success?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductResponseModel> events)? success,
    TResult Function(ProductResponseModel events)? detailsuccessproduct,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDetailProduct value) detailsuccessproduct,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ProductState {
  const factory _Success(final List<ProductResponseModel> events) =
      _$SuccessImpl;

  List<ProductResponseModel> get events;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessDetailProductImplCopyWith<$Res> {
  factory _$$SuccessDetailProductImplCopyWith(_$SuccessDetailProductImpl value,
          $Res Function(_$SuccessDetailProductImpl) then) =
      __$$SuccessDetailProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductResponseModel events});
}

/// @nodoc
class __$$SuccessDetailProductImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessDetailProductImpl>
    implements _$$SuccessDetailProductImplCopyWith<$Res> {
  __$$SuccessDetailProductImplCopyWithImpl(_$SuccessDetailProductImpl _value,
      $Res Function(_$SuccessDetailProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$SuccessDetailProductImpl(
      null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as ProductResponseModel,
    ));
  }
}

/// @nodoc

class _$SuccessDetailProductImpl implements _SuccessDetailProduct {
  const _$SuccessDetailProductImpl(this.events);

  @override
  final ProductResponseModel events;

  @override
  String toString() {
    return 'ProductState.detailsuccessproduct(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDetailProductImpl &&
            (identical(other.events, events) || other.events == events));
  }

  @override
  int get hashCode => Object.hash(runtimeType, events);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDetailProductImplCopyWith<_$SuccessDetailProductImpl>
      get copyWith =>
          __$$SuccessDetailProductImplCopyWithImpl<_$SuccessDetailProductImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductResponseModel> events) success,
    required TResult Function(ProductResponseModel events) detailsuccessproduct,
    required TResult Function(String message) error,
  }) {
    return detailsuccessproduct(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductResponseModel> events)? success,
    TResult? Function(ProductResponseModel events)? detailsuccessproduct,
    TResult? Function(String message)? error,
  }) {
    return detailsuccessproduct?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductResponseModel> events)? success,
    TResult Function(ProductResponseModel events)? detailsuccessproduct,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detailsuccessproduct != null) {
      return detailsuccessproduct(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDetailProduct value) detailsuccessproduct,
    required TResult Function(_Error value) error,
  }) {
    return detailsuccessproduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult? Function(_Error value)? error,
  }) {
    return detailsuccessproduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (detailsuccessproduct != null) {
      return detailsuccessproduct(this);
    }
    return orElse();
  }
}

abstract class _SuccessDetailProduct implements ProductState {
  const factory _SuccessDetailProduct(final ProductResponseModel events) =
      _$SuccessDetailProductImpl;

  ProductResponseModel get events;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessDetailProductImplCopyWith<_$SuccessDetailProductImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$ProductStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
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
    return 'ProductState.error(message: $message)';
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

  /// Create a copy of ProductState
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
    required TResult Function(List<ProductResponseModel> events) success,
    required TResult Function(ProductResponseModel events) detailsuccessproduct,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductResponseModel> events)? success,
    TResult? Function(ProductResponseModel events)? detailsuccessproduct,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductResponseModel> events)? success,
    TResult Function(ProductResponseModel events)? detailsuccessproduct,
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
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDetailProduct value) detailsuccessproduct,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDetailProduct value)? detailsuccessproduct,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProductState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
