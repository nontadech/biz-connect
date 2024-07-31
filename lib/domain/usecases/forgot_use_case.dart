

import 'package:biz_connect/app/core/usecases/pram_usecase.dart';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/domain/repositories/auth_repository.dart';

class ForgotInUseCase extends ParamUseCase<Body, String> {
  final AuthenticationRepository _repo;
  ForgotInUseCase(this._repo);

  @override
  Future<Body> execute(String params) {
    return _repo.forgotPassword(params);
  }
}
