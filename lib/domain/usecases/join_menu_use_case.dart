

import 'package:biz_connect/app/core/usecases/pram_usecase.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class JoinMenuUseCase extends ParamUseCase<JoinMenu, int> {
  final JoinRepository _repo;
  JoinMenuUseCase(this._repo);

  @override
  Future<JoinMenu> execute(int params) {
    return _repo.getMenuList(params);
  }
}
