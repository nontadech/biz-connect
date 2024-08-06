import 'package:biz_connect/app/services/local_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class PollFirebase {
  final counterRef = FirebaseDatabase.instance.ref('poll');
  final store = Get.find<LocalStorageService>();
  int? eventId;
  int? zoneId;
  int? pollId;
  String? key;
  PollFirebase._({this.eventId, this.zoneId, this.pollId});
  PollFirebase.poll(int eventId, int zoneId) : this._(eventId: eventId, zoneId: zoneId);

  PollFirebase.savePoll(
    int eventId, 
    int zoneId, 
    int pollId
  ) : this._(
    eventId: eventId, 
    zoneId: zoneId, 
    pollId: pollId
  );

  Future<DataSnapshot> get() async {
    return counterRef.child(eventId.toString()).child(zoneId.toString()).get();
  }

  Future<void> add() async {
    return counterRef.child(eventId.toString()).child(zoneId.toString()).child(pollId.toString()).child('Choice').child(key.toString()).child('User').child(store.user!.data!.attendee!.id.toString()).push().set(<String, String>{'user_id': store.user!.data!.attendee!.id.toString()});
  }

  Future<void> remove() async {
    return counterRef.child(eventId.toString()).child(zoneId.toString()).child(pollId.toString()).child('Choice').child(key.toString()).child('User').child(store.user!.data!.attendee!.id.toString()).remove();
  }

}