import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/entities/genre.codegen.dart';

part 'genre_model.codegen.freezed.dart';

part 'genre_model.codegen.g.dart';

@freezed
class GenreModel with _$GenreModel {
  const factory GenreModel({
    required int id,
    required String name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}

extension GenreModelExt on GenreModel {
  Genre toEntity() => Genre(id: id, name: name);
}
