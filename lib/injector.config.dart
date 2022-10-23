// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/datasources/movie_remote_data_source.dart' as _i3;
import 'data/datasources/movie_remote_data_source_impl.dart' as _i4;
import 'data/repositories/movie_repository_impl.dart' as _i7;
import 'domain/repositories/movie_repository.dart' as _i6;
import 'domain/usecases/get_movie_detail.dart' as _i8;
import 'domain/usecases/get_now_playing_movies.dart' as _i9;
import 'persentation/blocs/movie_bloc.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.MovieRemoteDataSource>(
      () => _i4.MovieRemoteDataSourceImpl(get<_i5.Dio>()));
  gh.lazySingleton<_i6.MovieRepository>(
      () => _i7.MovieRepositoryImpl(get<_i3.MovieRemoteDataSource>()));
  gh.factory<_i8.GetMovieDetailUseCase>(
      () => _i8.GetMovieDetailUseCase(get<_i6.MovieRepository>()));
  gh.factory<_i9.GetNowPlayingMoviesUseCase>(
      () => _i9.GetNowPlayingMoviesUseCase(get<_i6.MovieRepository>()));
  gh.factory<_i10.MovieBloc>(
      () => _i10.MovieBloc(get<_i9.GetNowPlayingMoviesUseCase>()));
  return get;
}
