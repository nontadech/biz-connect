

import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/domain/repositories/auth_repository.dart';

class FCMTokenUseCase extends NoParamUseCase<Body> {
  final AuthenticationRepository _repo;
  FCMTokenUseCase(this._repo);

  @override
  Future<Body> execute() {
    return _repo.postFCMToken();
  }
}
