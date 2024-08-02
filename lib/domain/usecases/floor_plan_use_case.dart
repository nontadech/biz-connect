

import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class FloorPlanUseCase extends ParamUseCase<FloorPlan, int> {
  final JoinRepository _repo;
  FloorPlanUseCase(this._repo);

  @override
  Future<FloorPlan> execute(int params) {
    return _repo.getFloorPlan(params);
  }
}
