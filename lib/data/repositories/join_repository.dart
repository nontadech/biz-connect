import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/data/providers/network/apis/join_api.dart';
import 'package:biz_connect/domain/repositories/join_repository.dart';

class JoinRepositoryIml extends JoinRepository {

  @override
  Future<JoinMenu> getMenuList(int eventId) async {
    final response = await JoinAPI.getEventMenuList(eventId).request();
    return JoinMenu.fromJson(response);
  }

  @override
  Future<JoinAgenda> getAgenda(int eventId, String? room) async {
    final response = await JoinAPI.getEventAgenda(eventId, room!).request();
    return JoinAgenda.fromJson(response);
  }
}
