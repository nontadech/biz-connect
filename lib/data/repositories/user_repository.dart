import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/data/providers/network/apis/user_api.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/repositories/user_repository.dart';

class UserRepositoryIml extends UserRepository {
  @override
  Future<UserAttendee> userEdit(UserEdit userEdit) async {
    final response = await UserAPI.userEdit(userEdit).request();
    return UserAttendee.fromJson(response);
  }

  @override
  Future<UserAttendee> setImageProfile(String image) async {
    final response = await UserAPI.setImageProfile(image).request();
    return UserAttendee.fromJson(response);
  }
  
  @override
  Future<Body> deleteAccount() async {
    final response = await UserAPI.deleteAccount().request();
    return Body.fromJson(response);
  }
}
