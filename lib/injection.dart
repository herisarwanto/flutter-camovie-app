
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/data/datasources/movie_remote_data_source.dart';
import 'package:movie_app/data/datasources/movie_remote_data_source_impl.dart';
import 'package:movie_app/data/repositories/movie_repository_impl.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';
import 'package:movie_app/domain/usecases/get_now_playing_movies.dart';
import 'package:movie_app/persentation/blocs/movie_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {

  sl.registerFactory(() => MovieBloc(sl()));

  // use case
  sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));

  // repository
  sl.registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(sl()));

  // data sources
  sl.registerLazySingleton<MovieRemoteDataSource>(() => MovieRemoteDataSourceImpl(sl()));

 // external
  sl.registerLazySingleton(() => Dio());

}