import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/common/failure.dart';
import 'package:movie_app/data/datasources/movie_remote_data_source.dart';
import 'package:movie_app/data/models/movie_model.codegen.dart';
import 'package:movie_app/domain/entities/movie.codegen.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

@LazySingleton(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl(
    this.remoteDataSource,
  );

  @override
  Future<Either<Failure, MovieDetail>> getMovieDetail(int id) async {
    final result = await remoteDataSource
        .getMovieDetail(id)
        .then((value) => value.map((r) => r.toMovieDetail()));

    return result;
  }

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await remoteDataSource
        .getNowPlayingMovies()
        .then((value) => value.map((r) => r
            .map(
              (e) => e.toMovie(),
            )
            .toList()));

    return result;
  }
}
