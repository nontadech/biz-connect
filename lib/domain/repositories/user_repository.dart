import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserAttendee> userEdit(UserEdit userEdit);
  Future<UserAttendee> setImageProfile(String image);
}
