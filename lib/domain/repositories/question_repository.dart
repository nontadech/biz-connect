import 'package:firebase_database/firebase_database.dart';

abstract class QuestionRepository {
  Stream<DatabaseEvent> getQuestion(int eventId, int zoneId);
  addQuestionl(int eventId, int zoneId, String msg);
}
