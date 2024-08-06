abstract class PollRepository {
  getPoll(int eventId, int zoneId);
  addPoll(int eventId, int zoneId, String pollId, String key);
  removePoll(int eventId, int zoneId, String pollId, String key);
}
