import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/repositories/event_repository.dart';

class EventUseCase extends NoParamUseCase<PopularEvent> {
  final EventRepository _repo;
  EventUseCase(this._repo);

  @override
  Future<PopularEvent> execute() {
    return _repo.getEvent();
  }

  Future<EventStat> getMyEventStat() {
    return _repo.getMyEventStat();
  }

}
