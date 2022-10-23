import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.codegen.freezed.dart';

part 'video_model.codegen.g.dart';

@freezed
class VideoModel with _$VideoModel {
  factory VideoModel({
    required String id,
    required String key,
    required String name,
    required String site,
    required String type,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}

@freezed
class VideoResponse with _$VideoResponse {
  factory VideoResponse({
    @JsonKey(name: 'results') required List<VideoModel> videoList,
  }) = _VideoResponse;

  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}
