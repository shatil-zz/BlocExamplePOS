// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(Map<int, ServiceTableModel> tables) ordersUpdated,
    required TResult Function(List<OrderModel> orders) addOrUpdateOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(Map<int, ServiceTableModel> tables)? ordersUpdated,
    TResult? Function(List<OrderModel> orders)? addOrUpdateOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(Map<int, ServiceTableModel> tables)? ordersUpdated,
    TResult Function(List<OrderModel> orders)? addOrUpdateOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrders value) loadOrders,
    required TResult Function(ServiceTablesUpdated value) ordersUpdated,
    required TResult Function(AddOrder value) addOrUpdateOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrders value)? loadOrders,
    TResult? Function(ServiceTablesUpdated value)? ordersUpdated,
    TResult? Function(AddOrder value)? addOrUpdateOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrders value)? loadOrders,
    TResult Function(ServiceTablesUpdated value)? ordersUpdated,
    TResult Function(AddOrder value)? addOrUpdateOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadOrdersImplCopyWith<$Res> {
  factory _$$LoadOrdersImplCopyWith(
          _$LoadOrdersImpl value, $Res Function(_$LoadOrdersImpl) then) =
      __$$LoadOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOrdersImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$LoadOrdersImpl>
    implements _$$LoadOrdersImplCopyWith<$Res> {
  __$$LoadOrdersImplCopyWithImpl(
      _$LoadOrdersImpl _value, $Res Function(_$LoadOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadOrdersImpl implements LoadOrders {
  const _$LoadOrdersImpl();

  @override
  String toString() {
    return 'OrderEvent.loadOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(Map<int, ServiceTableModel> tables) ordersUpdated,
    required TResult Function(List<OrderModel> orders) addOrUpdateOrder,
  }) {
    return loadOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(Map<int, ServiceTableModel> tables)? ordersUpdated,
    TResult? Function(List<OrderModel> orders)? addOrUpdateOrder,
  }) {
    return loadOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(Map<int, ServiceTableModel> tables)? ordersUpdated,
    TResult Function(List<OrderModel> orders)? addOrUpdateOrder,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrders value) loadOrders,
    required TResult Function(ServiceTablesUpdated value) ordersUpdated,
    required TResult Function(AddOrder value) addOrUpdateOrder,
  }) {
    return loadOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrders value)? loadOrders,
    TResult? Function(ServiceTablesUpdated value)? ordersUpdated,
    TResult? Function(AddOrder value)? addOrUpdateOrder,
  }) {
    return loadOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrders value)? loadOrders,
    TResult Function(ServiceTablesUpdated value)? ordersUpdated,
    TResult Function(AddOrder value)? addOrUpdateOrder,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(this);
    }
    return orElse();
  }
}

abstract class LoadOrders implements OrderEvent {
  const factory LoadOrders() = _$LoadOrdersImpl;
}

/// @nodoc
abstract class _$$ServiceTablesUpdatedImplCopyWith<$Res> {
  factory _$$ServiceTablesUpdatedImplCopyWith(_$ServiceTablesUpdatedImpl value,
          $Res Function(_$ServiceTablesUpdatedImpl) then) =
      __$$ServiceTablesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<int, ServiceTableModel> tables});
}

/// @nodoc
class __$$ServiceTablesUpdatedImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$ServiceTablesUpdatedImpl>
    implements _$$ServiceTablesUpdatedImplCopyWith<$Res> {
  __$$ServiceTablesUpdatedImplCopyWithImpl(_$ServiceTablesUpdatedImpl _value,
      $Res Function(_$ServiceTablesUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
  }) {
    return _then(_$ServiceTablesUpdatedImpl(
      null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as Map<int, ServiceTableModel>,
    ));
  }
}

/// @nodoc

class _$ServiceTablesUpdatedImpl implements ServiceTablesUpdated {
  const _$ServiceTablesUpdatedImpl(final Map<int, ServiceTableModel> tables)
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
    return 'OrderEvent.ordersUpdated(tables: $tables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceTablesUpdatedImpl &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tables));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceTablesUpdatedImplCopyWith<_$ServiceTablesUpdatedImpl>
      get copyWith =>
          __$$ServiceTablesUpdatedImplCopyWithImpl<_$ServiceTablesUpdatedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(Map<int, ServiceTableModel> tables) ordersUpdated,
    required TResult Function(List<OrderModel> orders) addOrUpdateOrder,
  }) {
    return ordersUpdated(tables);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(Map<int, ServiceTableModel> tables)? ordersUpdated,
    TResult? Function(List<OrderModel> orders)? addOrUpdateOrder,
  }) {
    return ordersUpdated?.call(tables);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(Map<int, ServiceTableModel> tables)? ordersUpdated,
    TResult Function(List<OrderModel> orders)? addOrUpdateOrder,
    required TResult orElse(),
  }) {
    if (ordersUpdated != null) {
      return ordersUpdated(tables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrders value) loadOrders,
    required TResult Function(ServiceTablesUpdated value) ordersUpdated,
    required TResult Function(AddOrder value) addOrUpdateOrder,
  }) {
    return ordersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrders value)? loadOrders,
    TResult? Function(ServiceTablesUpdated value)? ordersUpdated,
    TResult? Function(AddOrder value)? addOrUpdateOrder,
  }) {
    return ordersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrders value)? loadOrders,
    TResult Function(ServiceTablesUpdated value)? ordersUpdated,
    TResult Function(AddOrder value)? addOrUpdateOrder,
    required TResult orElse(),
  }) {
    if (ordersUpdated != null) {
      return ordersUpdated(this);
    }
    return orElse();
  }
}

abstract class ServiceTablesUpdated implements OrderEvent {
  const factory ServiceTablesUpdated(final Map<int, ServiceTableModel> tables) =
      _$ServiceTablesUpdatedImpl;

  Map<int, ServiceTableModel> get tables;
  @JsonKey(ignore: true)
  _$$ServiceTablesUpdatedImplCopyWith<_$ServiceTablesUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrderImplCopyWith<$Res> {
  factory _$$AddOrderImplCopyWith(
          _$AddOrderImpl value, $Res Function(_$AddOrderImpl) then) =
      __$$AddOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderModel> orders});
}

/// @nodoc
class __$$AddOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$AddOrderImpl>
    implements _$$AddOrderImplCopyWith<$Res> {
  __$$AddOrderImplCopyWithImpl(
      _$AddOrderImpl _value, $Res Function(_$AddOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$AddOrderImpl(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$AddOrderImpl implements AddOrder {
  const _$AddOrderImpl(final List<OrderModel> orders) : _orders = orders;

  final List<OrderModel> _orders;
  @override
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrderEvent.addOrUpdateOrder(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrderImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrderImplCopyWith<_$AddOrderImpl> get copyWith =>
      __$$AddOrderImplCopyWithImpl<_$AddOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(Map<int, ServiceTableModel> tables) ordersUpdated,
    required TResult Function(List<OrderModel> orders) addOrUpdateOrder,
  }) {
    return addOrUpdateOrder(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(Map<int, ServiceTableModel> tables)? ordersUpdated,
    TResult? Function(List<OrderModel> orders)? addOrUpdateOrder,
  }) {
    return addOrUpdateOrder?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(Map<int, ServiceTableModel> tables)? ordersUpdated,
    TResult Function(List<OrderModel> orders)? addOrUpdateOrder,
    required TResult orElse(),
  }) {
    if (addOrUpdateOrder != null) {
      return addOrUpdateOrder(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrders value) loadOrders,
    required TResult Function(ServiceTablesUpdated value) ordersUpdated,
    required TResult Function(AddOrder value) addOrUpdateOrder,
  }) {
    return addOrUpdateOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrders value)? loadOrders,
    TResult? Function(ServiceTablesUpdated value)? ordersUpdated,
    TResult? Function(AddOrder value)? addOrUpdateOrder,
  }) {
    return addOrUpdateOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrders value)? loadOrders,
    TResult Function(ServiceTablesUpdated value)? ordersUpdated,
    TResult Function(AddOrder value)? addOrUpdateOrder,
    required TResult orElse(),
  }) {
    if (addOrUpdateOrder != null) {
      return addOrUpdateOrder(this);
    }
    return orElse();
  }
}

abstract class AddOrder implements OrderEvent {
  const factory AddOrder(final List<OrderModel> orders) = _$AddOrderImpl;

  List<OrderModel> get orders;
  @JsonKey(ignore: true)
  _$$AddOrderImplCopyWith<_$AddOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
