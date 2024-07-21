// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fn_base_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FnBaseErrorResponse _$FnBaseErrorResponseFromJson(Map<String, dynamic> json) =>
    FnBaseErrorResponse(
      (json['code'] as num).toInt(),
      json['message'] as String,
    );

Map<String, dynamic> _$FnBaseErrorResponseToJson(
        FnBaseErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
