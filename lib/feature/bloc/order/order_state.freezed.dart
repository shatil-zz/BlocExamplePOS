// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<int, ServiceTableModel> tables) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<int, ServiceTableModel> tables)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<int, ServiceTableModel> tables)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrdersLoading value) loading,
    required TResult Function(ServiceTableLoaded value) loaded,
    required TResult Function(OrderError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrdersLoading value)? loading,
    TResult? Function(ServiceTableLoaded value)? loaded,
    TResult? Function(OrderError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrdersLoading value)? loading,
    TResult Function(ServiceTableLoaded value)? loaded,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderInitialImplCopyWith<$Res> {
  factory _$$OrderInitialImplCopyWith(
          _$OrderInitialImpl value, $Res Function(_$OrderInitialImpl) then) =
      __$$OrderInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderInitialImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderInitialImpl>
    implements _$$OrderInitialImplCopyWith<$Res> {
  __$$OrderInitialImplCopyWithImpl(
      _$OrderInitialImpl _value, $Res Function(_$OrderInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderInitialImpl implements OrderInitial {
  const _$OrderInitialImpl();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<int, ServiceTableModel> tables) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<int, ServiceTableModel> tables)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<int, ServiceTableModel> tables)? loaded,
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
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrdersLoading value) loading,
    required TResult Function(ServiceTableLoaded value) loaded,
    required TResult Function(OrderError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrdersLoading value)? loading,
    TResult? Function(ServiceTableLoaded value)? loaded,
    TResult? Function(OrderError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrdersLoading value)? loading,
    TResult Function(ServiceTableLoaded value)? loaded,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OrderInitial implements OrderState {
  const factory OrderInitial() = _$OrderInitialImpl;
}

/// @nodoc
abstract class _$$OrdersLoadingImplCopyWith<$Res> {
  factory _$$OrdersLoadingImplCopyWith(
          _$OrdersLoadingImpl value, $Res Function(_$OrdersLoadingImpl) then) =
      __$$OrdersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrdersLoadingImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrdersLoadingImpl>
    implements _$$OrdersLoadingImplCopyWith<$Res> {
  __$$OrdersLoadingImplCopyWithImpl(
      _$OrdersLoadingImpl _value, $Res Function(_$OrdersLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrdersLoadingImpl implements OrdersLoading {
  const _$OrdersLoadingImpl();

  @override
  String toString() {
    return 'OrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrdersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<int, ServiceTableModel> tables) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<int, ServiceTableModel> tables)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<int, ServiceTableModel> tables)? loaded,
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
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrdersLoading value) loading,
    required TResult Function(ServiceTableLoaded value) loaded,
    required TResult Function(OrderError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrdersLoading value)? loading,
    TResult? Function(ServiceTableLoaded value)? loaded,
    TResult? Function(OrderError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrdersLoading value)? loading,
    TResult Function(ServiceTableLoaded value)? loaded,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OrdersLoading implements OrderState {
  const factory OrdersLoading() = _$OrdersLoadingImpl;
}

/// @nodoc
abstract class _$$ServiceTableLoadedImplCopyWith<$Res> {
  factory _$$ServiceTableLoadedImplCopyWith(_$ServiceTableLoadedImpl value,
          $Res Function(_$ServiceTableLoadedImpl) then) =
      __$$ServiceTableLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<int, ServiceTableModel> tables});
}

/// @nodoc
class __$$ServiceTableLoadedImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$ServiceTableLoadedImpl>
    implements _$$ServiceTableLoadedImplCopyWith<$Res> {
  __$$ServiceTableLoadedImplCopyWithImpl(_$ServiceTableLoadedImpl _value,
      $Res Function(_$ServiceTableLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
  }) {
    return _then(_$ServiceTableLoadedImpl(
      null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as Map<int, ServiceTableModel>,
    ));
  }
}

/// @nodoc

class _$ServiceTableLoadedImpl implements ServiceTableLoaded {
  const _$ServiceTableLoadedImpl(final Map<int, ServiceTableModel> tables)
      : _tables = tables;

  final Map<int, ServiceTableModel> _tables;
  @override
  Map<int, ServiceTableModel> get tables {
    if (_tables is EqualUnmodifiableMapView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tables);
  }

  @override
  String toString() {
    return 'OrderState.loaded(tables: $tables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceTableLoadedImpl &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tables));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceTableLoadedImplCopyWith<_$ServiceTableLoadedImpl> get copyWith =>
      __$$ServiceTableLoadedImplCopyWithImpl<_$ServiceTableLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<int, ServiceTableModel> tables) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(tables);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<int, ServiceTableModel> tables)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(tables);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<int, ServiceTableModel> tables)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrdersLoading value) loading,
    required TResult Function(ServiceTableLoaded value) loaded,
    required TResult Function(OrderError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrdersLoading value)? loading,
    TResult? Function(ServiceTableLoaded value)? loaded,
    TResult? Function(OrderError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrdersLoading value)? loading,
    TResult Function(ServiceTableLoaded value)? loaded,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ServiceTableLoaded implements OrderState {
  const factory ServiceTableLoaded(final Map<int, ServiceTableModel> tables) =
      _$ServiceTableLoadedImpl;

  Map<int, ServiceTableModel> get tables;
  @JsonKey(ignore: true)
  _$$ServiceTableLoadedImplCopyWith<_$ServiceTableLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderErrorImplCopyWith<$Res> {
  factory _$$OrderErrorImplCopyWith(
          _$OrderErrorImpl value, $Res Function(_$OrderErrorImpl) then) =
      __$$OrderErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OrderErrorImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderErrorImpl>
    implements _$$OrderErrorImplCopyWith<$Res> {
  __$$OrderErrorImplCopyWithImpl(
      _$OrderErrorImpl _value, $Res Function(_$OrderErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OrderErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderErrorImpl implements OrderError {
  const _$OrderErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OrderState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderErrorImplCopyWith<_$OrderErrorImpl> get copyWith =>
      __$$OrderErrorImplCopyWithImpl<_$OrderErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<int, ServiceTableModel> tables) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<int, ServiceTableModel> tables)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<int, ServiceTableModel> tables)? loaded,
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
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrdersLoading value) loading,
    required TResult Function(ServiceTableLoaded value) loaded,
    required TResult Function(OrderError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrdersLoading value)? loading,
    TResult? Function(ServiceTableLoaded value)? loaded,
    TResult? Function(OrderError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrdersLoading value)? loading,
    TResult Function(ServiceTableLoaded value)? loaded,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OrderError implements OrderState {
  const factory OrderError(final String message) = _$OrderErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$OrderErrorImplCopyWith<_$OrderErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
