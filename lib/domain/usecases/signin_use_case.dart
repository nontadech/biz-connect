

import 'package:biz_connect/app/core/usecases/pram_usecase.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/repositories/auth_repository.dart';


class SignInUseCase extends ParamUseCase<User, UserLogin> {
  final AuthenticationRepository _repo;
  SignInUseCase(this._repo);

  @override
  Future<User> execute(UserLogin params) {
    return _repo.signIn(params.email, params.password);
  }
}
