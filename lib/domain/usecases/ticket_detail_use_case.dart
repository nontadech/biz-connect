import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/ticket_model.dart';
import 'package:biz_connect/domain/repositories/event_repository.dart';


class TicketDetailUseCase extends ParamUseCase<Ticket, int> {
  final EventRepository _repo;
  TicketDetailUseCase(this._repo);

  @override
  Future<Ticket> execute(int params) {
    return _repo.getMyEventTicket(params);
  }
}
