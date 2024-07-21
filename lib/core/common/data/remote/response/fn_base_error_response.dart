import 'package:json_annotation/json_annotation.dart';

part 'fn_base_error_response.g.dart';

@JsonSerializable()
class FnBaseErrorResponse {
  final int code;
  final String message;

  FnBaseErrorResponse(this.code, this.message);

  factory FnBaseErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$FnBaseErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FnBaseErrorResponseToJson(this);
}