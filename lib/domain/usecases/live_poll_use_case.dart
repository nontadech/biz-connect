import 'package:biz_connect/app/core/usecases/param_usecase.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/repositories/event_repository.dart';
import 'package:biz_connect/domain/repositories/poll_repository.dart';

class LivePollUseCase extends ParamUseCase<EventFromRegister, int> {
  final EventRepository _repo;
  final PollRepository _poll;
  LivePollUseCase(this._repo, this._poll);

  @override
  Future<EventFromRegister> execute(int params) {
    return _repo.getEventFromRegister(params);
  }

  Future getPoll(int eventId, int zoneId) {
    return _poll.getPoll(eventId, zoneId);
  }

  Future addPoll(int eventId, int zoneId, String pollId, String key) {
    return _poll.addPoll(eventId, zoneId, pollId, key);
  }

   Future removePoll(int eventId, int zoneId, String pollId, String key) {
    return _poll.removePoll(eventId, zoneId, pollId, key);
  }

}
