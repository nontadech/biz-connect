

import 'package:biz_connect/app/core/usecases/pram_usecase.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class AgendaUseCase extends ParamUseCase<JoinAgenda, JoinAgendaInput> {
  final JoinRepository _repo;
  AgendaUseCase(this._repo);

  @override
  Future<JoinAgenda> execute(JoinAgendaInput params) {
    return _repo.getAgenda(params.eventId, params.room!);
  }
}
