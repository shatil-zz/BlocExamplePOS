// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../bloc/order/order_bloc.dart' as _i736;
import '../db/db_helper.dart' as _i562;
import '../repository/order_repository.dart' as _i283;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i562.DatabaseHelper>(() => _i562.DatabaseHelper());
    gh.singleton<_i283.OrderRepository>(
        () => _i283.OrderRepository(gh<_i562.DatabaseHelper>()));
    gh.factory<_i736.OrderBloc>(
        () => _i736.OrderBloc(gh<_i283.OrderRepository>()));
    return this;
  }
}
