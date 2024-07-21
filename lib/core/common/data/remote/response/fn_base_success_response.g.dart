// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fn_base_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FnBaseSuccessResponse<T> _$FnBaseSuccessResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    FnBaseSuccessResponse<T>(
      Status.fromJson(json['status'] as Map<String, dynamic>),
      fromJsonT(json['data']),
      json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FnBaseSuccessResponseToJson<T>(
  FnBaseSuccessResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'data': toJsonT(instance.data),
      'meta': instance.meta,
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      (json['code'] as num).toInt(),
      json['message'] as String,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      (json['page'] as num).toInt(),
      (json['limit'] as num).toInt(),
      (json['totalPage'] as num).toInt(),
      (json['totalData'] as num).toInt(),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'totalPage': instance.totalPage,
      'totalData': instance.totalData,
    };
