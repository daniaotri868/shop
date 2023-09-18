// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../features/app/data/repository/prefs_repository_impl.dart' as _i8;
import '../../features/app/domin/repositories/prefs_repository.dart' as _i7;
import '../../features/app/presentation/bloc/app_manager_cubit.dart' as _i3;
import '../../features/auth/data/data_source/auth_remote_data_source.dart'
    as _i13;
import '../../features/auth/data/repository_imp/auth_repository_imp.dart'
    as _i15;
import '../../features/auth/domain/repository/auth_repository.dart' as _i14;
import '../../features/auth/domain/use_case/create_user_usecase.dart' as _i16;
import '../../features/auth/domain/use_case/login_usecase.dart' as _i18;
import '../../features/auth/presentation/auth_bloc/auth_bloc.dart' as _i20;
import '../../features/product/data/data_source/remote_data_source.dart'
    as _i10;
import '../../features/product/data/repo_imp/repo_product_imp.dart' as _i12;
import '../../features/product/domain/repo/repo_product.dart' as _i11;
import '../../features/product/domain/usecase/get_product_usecase.dart' as _i17;
import '../../features/product/presentation/bloc/product_bloc.dart' as _i19;
import '../api/client.dart' as _i9;
import 'di_container.dart' as _i21;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.AppManagerCubit>(() => _i3.AppManagerCubit());
  gh.factory<_i4.BaseOptions>(() => appModule.dioOption);
  gh.singleton<_i5.Logger>(appModule.logger);
  await gh.singletonAsync<_i6.SharedPreferences>(
    () => appModule.sharedPreferences,
    preResolve: true,
  );
  gh.lazySingleton<_i4.Dio>(() => appModule.dio(
        gh<_i4.BaseOptions>(),
        gh<_i5.Logger>(),
      ));
  gh.factory<_i7.PrefsRepository>(
      () => _i8.PrefsRepositoryImpl(gh<_i6.SharedPreferences>()));
  gh.factory<_i9.ClientApi>(() => _i9.ClientApi(gh<_i4.Dio>()));
  gh.factory<_i10.ProductRemoteDataSource>(
      () => _i10.ProductRemoteDataSource(gh<_i9.ClientApi>()));
  gh.factory<_i11.ProductRepository>(() => _i12.ProductRepositoryImp(
      datasource: gh<_i10.ProductRemoteDataSource>()));
  gh.factory<_i13.AuthRemoteDataSource>(
      () => _i13.AuthRemoteDataSource(gh<_i9.ClientApi>()));
  gh.factory<_i14.AuthRepository>(() =>
      _i15.AuthRepositoryImpl(datasource: gh<_i13.AuthRemoteDataSource>()));
  gh.factory<_i16.CreatUserUsecase>(
      () => _i16.CreatUserUsecase(gh<_i14.AuthRepository>()));
  gh.factory<_i17.GetProductUsecase>(
      () => _i17.GetProductUsecase(gh<_i11.ProductRepository>()));
  gh.factory<_i18.LoginUsecase>(
      () => _i18.LoginUsecase(gh<_i14.AuthRepository>()));
  gh.factory<_i19.ProductBloc>(
      () => _i19.ProductBloc(gh<_i17.GetProductUsecase>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(
        gh<_i18.LoginUsecase>(),
        gh<_i16.CreatUserUsecase>(),
      ));
  return getIt;
}

class _$AppModule extends _i21.AppModule {}
