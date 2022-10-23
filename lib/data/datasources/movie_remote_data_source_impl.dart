import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/common/constants.dart';
import 'package:movie_app/common/failure.dart';
import 'package:movie_app/data/datasources/movie_remote_data_source.dart';
import 'package:movie_app/data/models/movie_model.codegen.dart';
import 'package:movie_app/data/models/video_model.codegen.dart';

@LazySingleton(as: MovieRemoteDataSource)
class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final Dio _dio;

  MovieRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, MovieDetailResponse>> getMovieDetail(int id) async {
    try {
      final response = await _dio.get('$MOVIE_URL$id?$API_KEY');

      if (response.statusCode == HttpStatus.ok) {
        final result = MovieDetailResponse.fromJson(response.data);

        if (result != null) {
          return right(result);
        }
      }

      return left(const ServerFailure('Data not found!'));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getMovieRecommendations(int id) {
    // TODO: implement getMovieRecommendations
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<VideoModel>>> getMovieVideo(int id) {
    // TODO: implement getMovieVideo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies() async {
    try {
      final response = await _dio.get('$NOW_PLAYING_URL?$API_KEY');

      if (response.statusCode == HttpStatus.ok) {
        final result = MovieResponse.fromJson(response.data).movieList;

        return right(result);
      }

      return left(const ServerFailure('Data not found!'));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieModel>>> searchMovies(String query) {
    // TODO: implement searchMovies
    throw UnimplementedError();
  }
}
