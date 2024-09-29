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
import 'package:user_articles/app/injection_container.dart' as _i105;
import 'package:user_articles/data/remote_data_sources/articles_remote_data_source.dart'
    as _i807;
import 'package:user_articles/data/remote_data_sources/authors_remote_data_source.dart'
    as _i678;
import 'package:user_articles/domain/repositories/articles_repository.dart'
    as _i1032;
import 'package:user_articles/domain/repositories/authors_repository.dart'
    as _i312;
import 'package:user_articles/features/articles/cubit/articles_cubit.dart'
    as _i192;
import 'package:user_articles/features/home/cubit/home_cubit.dart' as _i328;

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
    final registerModule = _$RegisterModule();
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i361.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i807.ArticlesRemoteRetrofitDataSource>(
        () => _i807.ArticlesRemoteRetrofitDataSource(gh<_i361.Dio>()));
    gh.factory<_i678.AuthorsRemoteRetrofitDataSource>(
        () => _i678.AuthorsRemoteRetrofitDataSource(gh<_i361.Dio>()));
    gh.factory<_i312.AuthorsRepository>(() => _i312.AuthorsRepository(
        remoteDataSource: gh<_i678.AuthorsRemoteRetrofitDataSource>()));
    gh.factory<_i1032.ArticlesRepository>(() => _i1032.ArticlesRepository(
        remoteDataSource: gh<_i807.ArticlesRemoteRetrofitDataSource>()));
    gh.factory<_i328.HomeCubit>(() =>
        _i328.HomeCubit(authorsRepository: gh<_i312.AuthorsRepository>()));
    gh.factory<_i192.ArticlesCubit>(() => _i192.ArticlesCubit(
        articlesRepository: gh<_i1032.ArticlesRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i105.RegisterModule {}
