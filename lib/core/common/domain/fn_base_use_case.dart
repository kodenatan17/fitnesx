import 'package:fitnesx/core/common/domain/fn_result_entity.dart';

abstract class UseCaseWithParams<Params, ReturnType> {
  Future<ResultEntity<ReturnType>> call(Params params);
}

abstract class UseCase<ReturnType> {
  Future<ResultEntity<ReturnType>> call();
}