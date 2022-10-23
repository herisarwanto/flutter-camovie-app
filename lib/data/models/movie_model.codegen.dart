import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/models/genre_model.codegen.dart';
import 'package:movie_app/domain/entities/movie.codegen.dart';

part 'movie_model.codegen.freezed.dart';

part 'movie_model.codegen.g.dart';

@freezed
class MovieModel with _$MovieModel {
  factory MovieModel({
    required bool adult,
    required String? backdropPath,
    required List<int> genreIds,
    required int id,
    required String originalTitle,
    required String overview,
    required double popularity,
    required String? posterPath,
    required String? releaseDate,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@freezed
class MovieResponse with _$MovieResponse {
  factory MovieResponse({
    @JsonKey(name: 'results') required List<MovieModel> movieList,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}

@freezed
class MovieDetailResponse with _$MovieDetailResponse {
  const factory MovieDetailResponse({
    required bool adult,
    required String? backdropPath,
    required int budget,
    required List<GenreModel> genres,
    required String homepage,
    required int id,
    required String? imdbId,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    required String posterPath,
    required String releaseDate,
    required int revenue,
    required int runtime,
    required String status,
    required String tagline,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _MovieDetailResponse;

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailResponseFromJson(json);
}

@freezed
class MovieTable with _$MovieTable {
  factory MovieTable({
    required int id,
    required String? title,
    required String? posterPath,
    required String? overview,
  }) = _MovieTable;

  factory MovieTable.fromJson(Map<String, dynamic> json) =>
      _$MovieTableFromJson(json);
}

extension MovieModelExt on MovieModel {
  Movie toMovie() => Movie(
      adult: adult,
      backdropPath: backdropPath,
      genreIds: genreIds.map((e) => e).toList(),
      id: id,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount);

  MovieTable fromMovieDetailEntity(MovieDetail movie) => MovieTable(
      id: movie.id,
      title: movie.title,
      posterPath: movie.posterPath,
      overview: movie.overview);

  WatchList toWatchList() => WatchList(
      id: id, overview: overview, posterPath: posterPath, title: title);
}

extension MovieDetailResponseExt on MovieDetailResponse {
  MovieDetail toMovieDetail() => MovieDetail(
      adult: adult,
      backdropPath: backdropPath,
      genre: genres.map((e) => e.toEntity()).toList(),
      id: id,
      originalTitle: originalTitle,
      overview: overview,
      posterPath: posterPath,
      releaseDate: releaseDate,
      runtime: runtime,
      title: title,
      voteAverage: voteAverage,
      voteCount: voteCount);
}
