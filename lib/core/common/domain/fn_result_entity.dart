import 'package:equatable/equatable.dart';
import 'package:fitnesx/core/common/data/remote/response/fn_base_success_response.dart';

mixin ResultEntity<T> {
  void when({
    Function(ResultSuccess<T>)? success,
    Function(ResultError)? error,
  }) {
    if (this is ResultError) {
      if (error != null) error(this as ResultError);
    } else {
      if (success != null) success(this as ResultSuccess<T>);
    }
  }

  static ResultSuccess<T> success<T>({required T data, Meta? meta}) {
    return ResultSuccess(data: data, meta: meta);
  }

  static ResultError<T> error<T>({required message}) {
    return ResultError(code: 1, message: message);
  }
}

class ResultSuccess<T> extends Equatable with ResultEntity<T> {
  final T data;
  final Meta? meta;

  ResultSuccess({required this.data, this.meta});

  @override
  List<Object?> get props => [data, meta];
}

class ResultError<T> extends Equatable with ResultEntity<T> {
  final int code;
  final String message;

  ResultError({
    required this.code,
    required this.message,
  });

  @override
  List<Object?> get props => [code, message];
}