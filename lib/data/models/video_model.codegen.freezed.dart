// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
class _$VideoModelTearOff {
  const _$VideoModelTearOff();

  _VideoModel call(
      {required String id,
      required String key,
      required String name,
      required String site,
      required String type}) {
    return _VideoModel(
      id: id,
      key: key,
      name: name,
      site: site,
      type: type,
    );
  }

  VideoModel fromJson(Map<String, Object?> json) {
    return VideoModel.fromJson(json);
  }
}

/// @nodoc
const $VideoModel = _$VideoModelTearOff();

/// @nodoc
mixin _$VideoModel {
  String get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get site => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res>;
  $Res call({String id, String key, String name, String site, String type});
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res> implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  final VideoModel _value;
  // ignore: unused_field
  final $Res Function(VideoModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? site = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VideoModelCopyWith<$Res> implements $VideoModelCopyWith<$Res> {
  factory _$VideoModelCopyWith(
          _VideoModel value, $Res Function(_VideoModel) then) =
      __$VideoModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String key, String name, String site, String type});
}

/// @nodoc
class __$VideoModelCopyWithImpl<$Res> extends _$VideoModelCopyWithImpl<$Res>
    implements _$VideoModelCopyWith<$Res> {
  __$VideoModelCopyWithImpl(
      _VideoModel _value, $Res Function(_VideoModel) _then)
      : super(_value, (v) => _then(v as _VideoModel));

  @override
  _VideoModel get _value => super._value as _VideoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? site = freezed,
    Object? type = freezed,
  }) {
    return _then(_VideoModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoModel implements _VideoModel {
  _$_VideoModel(
      {required this.id,
      required this.key,
      required this.name,
      required this.site,
      required this.type});

  factory _$_VideoModel.fromJson(Map<String, dynamic> json) =>
      _$$_VideoModelFromJson(json);

  @override
  final String id;
  @override
  final String key;
  @override
  final String name;
  @override
  final String site;
  @override
  final String type;

  @override
  String toString() {
    return 'VideoModel(id: $id, key: $key, name: $name, site: $site, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.site, site) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(site),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$VideoModelCopyWith<_VideoModel> get copyWith =>
      __$VideoModelCopyWithImpl<_VideoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoModelToJson(this);
  }
}

abstract class _VideoModel implements VideoModel {
  factory _VideoModel(
      {required String id,
      required String key,
      required String name,
      required String site,
      required String type}) = _$_VideoModel;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$_VideoModel.fromJson;

  @override
  String get id;
  @override
  String get key;
  @override
  String get name;
  @override
  String get site;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$VideoModelCopyWith<_VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) {
  return _VideoResponse.fromJson(json);
}

/// @nodoc
class _$VideoResponseTearOff {
  const _$VideoResponseTearOff();

  _VideoResponse call(
      {@JsonKey(name: 'results') required List<VideoModel> videoList}) {
    return _VideoResponse(
      videoList: videoList,
    );
  }

  VideoResponse fromJson(Map<String, Object?> json) {
    return VideoResponse.fromJson(json);
  }
}

/// @nodoc
const $VideoResponse = _$VideoResponseTearOff();

/// @nodoc
mixin _$VideoResponse {
  @JsonKey(name: 'results')
  List<VideoModel> get videoList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseCopyWith<VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseCopyWith<$Res> {
  factory $VideoResponseCopyWith(
          VideoResponse value, $Res Function(VideoResponse) then) =
      _$VideoResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<VideoModel> videoList});
}

/// @nodoc
class _$VideoResponseCopyWithImpl<$Res>
    implements $VideoResponseCopyWith<$Res> {
  _$VideoResponseCopyWithImpl(this._value, this._then);

  final VideoResponse _value;
  // ignore: unused_field
  final $Res Function(VideoResponse) _then;

  @override
  $Res call({
    Object? videoList = freezed,
  }) {
    return _then(_value.copyWith(
      videoList: videoList == freezed
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }
}

/// @nodoc
abstract class _$VideoResponseCopyWith<$Res>
    implements $VideoResponseCopyWith<$Res> {
  factory _$VideoResponseCopyWith(
          _VideoResponse value, $Res Function(_VideoResponse) then) =
      __$VideoResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<VideoModel> videoList});
}

/// @nodoc
class __$VideoResponseCopyWithImpl<$Res>
    extends _$VideoResponseCopyWithImpl<$Res>
    implements _$VideoResponseCopyWith<$Res> {
  __$VideoResponseCopyWithImpl(
      _VideoResponse _value, $Res Function(_VideoResponse) _then)
      : super(_value, (v) => _then(v as _VideoResponse));

  @override
  _VideoResponse get _value => super._value as _VideoResponse;

  @override
  $Res call({
    Object? videoList = freezed,
  }) {
    return _then(_VideoResponse(
      videoList: videoList == freezed
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoResponse implements _VideoResponse {
  _$_VideoResponse({@JsonKey(name: 'results') required this.videoList});

  factory _$_VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResponseFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<VideoModel> videoList;

  @override
  String toString() {
    return 'VideoResponse(videoList: $videoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoResponse &&
            const DeepCollectionEquality().equals(other.videoList, videoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(videoList));

  @JsonKey(ignore: true)
  @override
  _$VideoResponseCopyWith<_VideoResponse> get copyWith =>
      __$VideoResponseCopyWithImpl<_VideoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResponseToJson(this);
  }
}

abstract class _VideoResponse implements VideoResponse {
  factory _VideoResponse(
          {@JsonKey(name: 'results') required List<VideoModel> videoList}) =
      _$_VideoResponse;

  factory _VideoResponse.fromJson(Map<String, dynamic> json) =
      _$_VideoResponse.fromJson;

  @override
  @JsonKey(name: 'results')
  List<VideoModel> get videoList;
  @override
  @JsonKey(ignore: true)
  _$VideoResponseCopyWith<_VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
