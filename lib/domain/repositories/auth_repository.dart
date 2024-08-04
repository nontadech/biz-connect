import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';

abstract class AuthenticationRepository {
  Future<User> signIn(String email, String password);
  Future<UserAttendee> userSignUp(UserSignUp userSignUp);
  Future<Body> forgotPassword(String email);
  Future<Body> postFCMToken();
}
