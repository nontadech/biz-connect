// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User  {
  const factory User({
    UserData? data,
  }) = _User;
  factory User.fromJson(Map<String, Object?> json)
      => _$UserFromJson(json);
}

@freezed
class UserAttendee with _$UserAttendee  {
  const factory UserAttendee({
    Attendee? data,
    String? message
  }) = _UserAttendee;
  factory UserAttendee.fromJson(Map<String, Object?> json)
      => _$UserAttendeeFromJson(json);
}