import 'package:biz_connect/data/providers/database/question_firebase.dart';
import 'package:biz_connect/domain/repositories/question_repository.dart';
import 'package:firebase_database/firebase_database.dart';

class QuestionRepositoryIml extends QuestionRepository {

  @override
  Stream<DatabaseEvent> getQuestion(int eventId, int zoneId) {
    return QuestionFirebase.question(eventId, zoneId).get();
  }

  @override
  addQuestionl(int eventId, int zoneId, String msg) async {
    QuestionFirebase.saveAwnser(eventId, zoneId, msg).add();
  }

}
