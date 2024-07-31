import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/repositories/event_repository.dart';

class HomeEventUseCase extends NoParamUseCase<Event> {
  final EventRepository _repo;
  HomeEventUseCase(this._repo);

  @override
  Future<Event> execute() {
    return _repo.getMyEventHome();
  }
}
