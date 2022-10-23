import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/models/movie_model.codegen.dart';
import 'package:movie_app/domain/entities/genre.codegen.dart';

part 'movie.codegen.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required bool? adult,
    required String? backdropPath,
    required List<int>? genreIds,
    required int id,
    required String? originalTitle,
    required String? overview,
    required double? popularity,
    required String? posterPath,
    required String? releaseDate,
    required String? title,
    required bool? video,
    required double? voteAverage,
    required int? voteCount,
  }) = _Movie;
}

@freezed
class WatchList with _$WatchList {
  const factory WatchList(
      {required int id, required String? overview, required String?
      posterPath, required String? title}) = _WatchList;
}

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required bool adult,
    required String? backdropPath,
    required List<Genre> genre,
    required int id,
    required String originalTitle,
    required String overview,
    required String posterPath,
    required String releaseDate,
    required int runtime,
    required String title,
    required double voteAverage,
    required int voteCount,
  }) = _MovieDetail;
}

extension MovieExt on Movie {
  MovieModel toMovieModel() =>
      MovieModel(adult: adult!,
          backdropPath: backdropPath,
          genreIds: genreIds!.map((e) => e).toList(),
          id: id,
          originalTitle: originalTitle!,
          overview: overview!,
          popularity: popularity!,
          posterPath: posterPath,
          releaseDate: releaseDate,
          title: title!,
          video: video!,
          voteAverage: voteAverage!,
          voteCount: voteCount!);
}
