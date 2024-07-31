import 'package:biz_connect/data/models/join_model.dart';

abstract class JoinRepository {
  Future<JoinMenu> getMenuList(int eventId);
  Future<JoinAgenda> getAgenda(int eventId, String? room);
}
