// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'base_response.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseResponse<T>(
      status: json['status'] as bool?,
      message: json['msg'] as String?,
      code: json['code'] as int?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      logs: json['logs'] as bool?,
      errorCode: json['err_code'] as String?,
    );

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.message,
      'code': instance.code,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'logs': instance.logs,
      'err_code': instance.errorCode,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
