

import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class SupportUseCase extends ParamUseCase<Partners, int> {
  final JoinRepository _repo;
  SupportUseCase(this._repo);

  @override
  Future<Partners> execute(int params) {
    return _repo.getPartners(params);
  }
}
