import 'dart:async';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class QuestionFirebase {
  final counterRef = FirebaseDatabase.instance.ref('question');
  final store = Get.find<LocalStorageService>();
  int? eventId;
  int? zoneId;
  String? msg;
  QuestionFirebase._({this.eventId, this.zoneId, this.msg});
  QuestionFirebase.question(int eventId, int zoneId) : this._(eventId: eventId, zoneId: zoneId);
  QuestionFirebase.saveAwnser(int eventId, int zoneId, String msg) : this._(eventId: eventId, zoneId: zoneId, msg: msg);

  Stream<DatabaseEvent> get() {
    return counterRef.child(eventId.toString()).child(zoneId.toString()).orderByChild('status').equalTo('Approve').onValue;
  }

  Future<void> add() async {
    return counterRef.child(eventId.toString()).child(zoneId.toString()).push().set(<String, String>{
      'user_id': store.user!.data!.attendee!.id.toString(),
      'user_name': store.user!.data!.attendee!.full_name.toString(),
      'user_profile': store.user!.data!.attendee!.profile.toString(),
      'create_date': DateTime.now().toIso8601String(),
      'text': msg.toString(),
      'status': 'Answered'
    });
  }

}