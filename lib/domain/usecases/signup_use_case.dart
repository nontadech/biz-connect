

import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/repositories/auth_repository.dart';


class SignUpUseCase extends ParamUseCase<UserAttendee, UserSignUp> {
  final AuthenticationRepository _repo;
  SignUpUseCase(this._repo);

  @override
  Future<UserAttendee> execute(UserSignUp params) {
    return _repo.userSignUp(params);
  }
}
