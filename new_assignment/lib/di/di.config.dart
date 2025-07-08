// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:new_assignment/di/register_module.dart' as _i480;
import 'package:new_assignment/features/auth/data/auth_remote_source.dart'
    as _i396;
import 'package:new_assignment/features/auth/data/auth_repo_impl.dart' as _i195;
import 'package:new_assignment/features/auth/domain/auth_repo.dart' as _i961;
import 'package:new_assignment/features/auth/domain/use_cases/auth_use_cases.dart'
    as _i178;
import 'package:new_assignment/features/auth/presentation/provider/auth_provider.dart'
    as _i941;
import 'package:new_assignment/features/main/data/main_remote_data_source.dart'
    as _i22;
import 'package:new_assignment/features/main/data/main_repo_impl.dart' as _i516;
import 'package:new_assignment/features/main/domain/main_repo.dart' as _i276;
import 'package:new_assignment/features/main/domain/usecases/main_usecases.dart'
    as _i317;
import 'package:new_assignment/features/main/presentation/provider/main_provider.dart'
    as _i88;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i396.AuthRemoteSource>(
        () => _i396.AuthRemoteSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i22.MainRemoteDataSource>(
        () => _i22.MainRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i276.MainRepo>(
        () => _i516.MainRepoImpl(gh<_i22.MainRemoteDataSource>()));
    gh.lazySingleton<_i961.AuthRepo>(
        () => _i195.AuthRepoImpl(gh<_i396.AuthRemoteSource>()));
    gh.lazySingleton<_i317.MainUsecases>(
        () => _i317.MainUsecases(gh<_i276.MainRepo>()));
    gh.lazySingleton<_i178.AuthUseCases>(
        () => _i178.AuthUseCases(gh<_i961.AuthRepo>()));
    gh.factory<_i88.MainProvider>(
        () => _i88.MainProvider(gh<_i317.MainUsecases>()));
    gh.factory<_i941.AuthProvider>(
        () => _i941.AuthProvider(gh<_i178.AuthUseCases>()));
    return this;
  }
}

class _$RegisterModule extends _i480.RegisterModule {}
