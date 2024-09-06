import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/repositories/event_repository.dart';

class EventPermissionUseCase extends ParamUseCase<EventPermission, int> {
  final EventRepository _repo;
  EventPermissionUseCase(this._repo);

  @override
  Future<EventPermission> execute(int params) {
    return _repo.getEventPermission(params);
  }
}
