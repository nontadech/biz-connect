import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/data/providers/network/apis/join_api.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class JoinRepositoryIml extends JoinRepository {

  @override
  Future<JoinMenu> getMenuList(int eventId) async {
    final response = await JoinAPI.getEventMenuList(eventId).request();
    return JoinMenu.fromJson(response);
  }

  @override
  Future<JoinAgenda> getAgenda(int eventId, String? room, int? speakerId) async {
    final response = await JoinAPI.getEventAgenda(eventId, room!, speakerId!).request();
    return JoinAgenda.fromJson(response);
  }

  @override
  Future<Body> saveSessionRating(SessionRateInput sessionRateInput) async {
    final response = await JoinAPI.postEventSessionRatingAnswer(sessionRateInput).request();
    return Body.fromJson(response);
  }

  @override
  Future<SessionAnswer> getSessionRating(SessionRateInput sessionRateInput) async {
    final response = await JoinAPI.getEventSessionRatingAnswers(sessionRateInput).request();
    return SessionAnswer.fromJson(response);
  }

  @override
  Future<FloorPlan> getFloorPlan(int eventId) async {
    final response = await JoinAPI.getEventFloorPlan(eventId).request();
    return FloorPlan.fromJson(response);
  }

  @override
  Future<Speaker> getSpeaker(int eventId) async {
    final response = await JoinAPI.getSpeaker(eventId).request();
    return Speaker.fromJson(response);
  }

  @override
  Future<EventFile> getEventFile(int eventId) async {
    final response = await JoinAPI.getEventFile(eventId).request();
    return EventFile.fromJson(response);
  }
  
  @override
  Future<Body> sendFileEmail(FileEmailInput fileEmailInput) async {
    final response = await JoinAPI.sendFileEmail(fileEmailInput).request();
    return Body.fromJson(response);
  }

}
