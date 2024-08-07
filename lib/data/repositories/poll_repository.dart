import 'package:biz_connect/data/providers/database/poll_firebase.dart';
import 'package:biz_connect/domain/repositories/poll_repository.dart';
import 'package:firebase_database/firebase_database.dart';

class PollRepositoryIml extends PollRepository {

  @override
  Stream<DatabaseEvent> getPoll(int eventId, int zoneId) {
    return PollFirebase.poll(eventId, zoneId).get();
  }

  @override
  addPoll(int eventId, int zoneId, String pollId, String key) async {
    PollFirebase.saveAwnser(eventId, zoneId, pollId, key).add();
  }

  @override
  removePoll(int eventId, int zoneId, String pollId, String key) async {
    PollFirebase.saveAwnser(eventId, zoneId, pollId, key).remove();
  }

}
