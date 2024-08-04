import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';

abstract class JoinRepository {
  Future<JoinMenu> getMenuList(int eventId);
  Future<JoinAgenda> getAgenda(int eventId, String? room, int speakerId);
  Future<Body> saveSessionRating(SessionRateInput sessionRateInput);
  Future<SessionAnswer> getSessionRating(SessionRateInput sessionRateInput);
  Future<FloorPlan> getFloorPlan(int eventId);
  Future<Speaker> getSpeaker(int eventId);
  Future<EventFile> getEventFile(int eventId);
  Future<Body> sendFileEmail(FileEmailInput fileEmailInput);
  Future<Partners> getPartners(int eventId);
  Future<Gallery> getGallery(int eventId);
  Future<SessionRating> getSessionRatingAll(SessionRateInput sessionRateInput);
}
