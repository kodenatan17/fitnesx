import 'package:equatable/equatable.dart';

abstract class FnException extends Equatable implements Exception {
  final String message;

  const FnException(this.message);

  @override
  List<Object?> get props => [message];
}

class CacheException extends FnException {
  const CacheException() : super("ERR_CACHE_EXCEPTION");
}