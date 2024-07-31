import 'package:biz_connect/app/core/usecases/no_param_usecase.dart';
import 'package:biz_connect/data/models/ticket_model.dart';
import 'package:biz_connect/domain/repositories/event_repository.dart';


class TicketUseCase extends NoParamUseCase<Ticket> {
  final EventRepository _repo;
  TicketUseCase(this._repo);

  @override
  Future<Ticket> execute() {
    return _repo.getMyEventTickets();
  }
}
