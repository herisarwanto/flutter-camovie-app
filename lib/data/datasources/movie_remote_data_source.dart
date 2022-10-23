
import 'package:dartz/dartz.dart';
import 'package:movie_app/common/failure.dart';
import 'package:movie_app/data/models/movie_model.codegen.dart';
import 'package:movie_app/data/models/video_model.codegen.dart';

abstract class MovieRemoteDataSource {
  Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies();
  Future<Either<Failure, List<MovieModel>>> getPopularMovies();
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies();
  Future<Either<Failure, List<MovieModel>>> getMovieRecommendations(int id);
  Future<Either<Failure, List<MovieModel>>> searchMovies(String query);
  Future<Either<Failure, List<VideoModel>>> getMovieVideo(int id);
  Future<Either<Failure, MovieDetailResponse>> getMovieDetail(int id);
}