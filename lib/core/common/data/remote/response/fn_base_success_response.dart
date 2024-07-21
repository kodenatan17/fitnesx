import 'package:json_annotation/json_annotation.dart';

part 'fn_base_success_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, includeIfNull: true)
class FnBaseSuccessResponse<T> {
  final Status status;
  final T data;
  final Meta? meta;

  FnBaseSuccessResponse(this.status, this.data, this.meta);

  factory FnBaseSuccessResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$FnBaseSuccessResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$FnBaseSuccessResponseToJson(this, toJsonT);
}

@JsonSerializable()
class Status {
  final int code;
  final String message;

  Status(this.code, this.message);

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}

@JsonSerializable()
class Meta {
  final int page;
  final int limit;
  final int totalPage;
  final int totalData;

  Meta(this.page, this.limit, this.totalPage, this.totalData);

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}