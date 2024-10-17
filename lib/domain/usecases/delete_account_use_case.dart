
import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/domain/repositories/user_repository.dart';


class DeleteAccountUseCase extends NoParamUseCase<Body> {
  final UserRepository _repo;
  DeleteAccountUseCase(this._repo);

  @override
  Future<Body> execute() {
    return _repo.deleteAccount();
  }
}
