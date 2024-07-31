import 'dart:convert';

import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/setting_entity.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum _Key {
  user,
  setting
}

class LocalStorageService extends GetxService {
  SharedPreferences? _sharedPreferences;
  Future<LocalStorageService> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  User? get user {
    final rawJson = _sharedPreferences?.getString(_Key.user.toString());
    if (rawJson == null) {
      return null;
    }
    Map<String, dynamic> map = jsonDecode(rawJson);
    return User.fromJson(map);
  }

  set user(User? value) {
    if (value != null) {
      _sharedPreferences?.setString(
          _Key.user.toString(), json.encode(value.toJson()));
    } else {
      _sharedPreferences?.remove(_Key.user.toString());
    }
  }

  Setting? get setting {
    final rawJson = _sharedPreferences?.getString(_Key.setting.toString());
    if (rawJson == null) {
      return null;
    }
    Map<String, dynamic> map = jsonDecode(rawJson);
    return Setting.fromJson(map);
  }

  set setting(Setting? value) {
    if (value != null) {
      _sharedPreferences?.setString(
          _Key.setting.toString(), json.encode(value.toJson()));
    } else {
      _sharedPreferences?.remove(_Key.setting.toString());
    }
  }
}
