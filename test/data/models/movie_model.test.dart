import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/data/models/movie_model.codegen.dart';
import 'package:movie_app/domain/entities/movie.codegen.dart';

import '../../json_reader.dart';

void main() {
  final tMovieModel = MovieModel(
      adult: false,
      backdropPath: 'backdropPath',
      genreIds: [1, 2, 3],
      id: 1,
      originalTitle: 'originalTitle',
      overview: 'overview',
      popularity: 1,
      posterPath: 'posterPath',
      releaseDate: 'releaseDate',
      title: 'title',
      video: false,
      voteAverage: 1,
      voteCount: 1);

  const tMovie = Movie(
      adult: false,
      backdropPath: 'backdropPath',
      genreIds: [1, 2, 3],
      id: 1,
      originalTitle: 'originalTitle',
      overview: 'overview',
      popularity: 1,
      posterPath: 'posterPath',
      releaseDate: 'releaseDate',
      title: 'title',
      video: false,
      voteAverage: 1,
      voteCount: 1);

  var tMovieModelForResponse = MovieModel(
    adult: false,
    backdropPath: '/path.jpg',
    genreIds: [1, 2, 3, 4],
    id: 1,
    originalTitle: 'Original Title',
    overview: 'Overview',
    popularity: 1.0,
    posterPath: '/path.jpg',
    releaseDate: '2020-05-05',
    title: 'Title',
    video: false,
    voteAverage: 1.0,
    voteCount: 1,
  );

  /// MovieModel
  test('Should be a subclass of Movie Entity', () {
    final result = tMovieModel.toMovie();
    expect(result, tMovie);
  });

  final tMovieResponse = MovieResponse(
      movieList: <MovieModel>[tMovieModelForResponse]);

  /// MovieResponse
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
      json.decode(readJson('dummy_data/now_playing.json'));

      // act
      final result = MovieResponse.fromJson(jsonMap);

      // assert
      expect(result, tMovieResponse);
    });
  });
}
