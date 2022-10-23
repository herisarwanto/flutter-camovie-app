import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.codegen.g.dart';

@immutable
@JsonSerializable(
  genericArgumentFactories: true,
)
class BaseResponse<T> extends Equatable {
  final bool? status;
  @JsonKey(name: 'msg')
  final String? message;
  final int? code;
  final T? data;
  final bool? logs;
  @JsonKey(name: 'err_code')
  final String? errorCode;

  const BaseResponse({
    required this.status,
    required this.message,
    this.code,
    required this.data,
    this.logs,
    this.errorCode,
  });

  @override
  List<Object?> get props => [status, message, code, data];
  factory BaseResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) {
    return _$BaseResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(
      Map<String, dynamic> Function(T value) toJsonT,
      ) {
    return _$BaseResponseToJson<T>(this, toJsonT);
  }
}
