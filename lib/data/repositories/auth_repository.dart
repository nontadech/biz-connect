import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/data/providers/network/apis/auth_api.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/repositories/auth_repository.dart';

class AuthenticationRepositoryIml extends AuthenticationRepository {
  @override
  Future<User> signIn(String email, String password) async {
    final response = await AuthAPI.login(email, password).request();
    return User.fromJson(response);
  }

  @override
  Future<UserAttendee> userSignUp(UserSignUp userSignUp) async {
    final response = await AuthAPI.register(userSignUp).request();
    response['data']['user_category'] = response['data']['user_category'] == "" ? [] : response['data']['user_category'];
    response['data']['user_interest'] = response['data']['user_interest'] == "" ? [] : response['data']['user_interest'];
    return UserAttendee.fromJson(response);
  }

  @override
  Future<Body> forgotPassword(String email) async {
    final response = await AuthAPI.forgotPassword(email).request();
    return Body.fromJson(response);
  }
}
