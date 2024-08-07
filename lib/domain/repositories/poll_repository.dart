import 'package:firebase_database/firebase_database.dart';

abstract class PollRepository {
  Stream<DatabaseEvent> getPoll(int eventId, int zoneId);
  addPoll(int eventId, int zoneId, String pollId, String key);
  removePoll(int eventId, int zoneId, String pollId, String key);
}
