// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserCategory with _$UserCategory  {
  factory UserCategory({
    int? cate_id,
    String? cate_name,
  }) = _UserCategory;
  
    factory UserCategory.fromJson(Map<String, Object?> json)
      => _$UserCategoryFromJson(json);
}

@freezed
class UserInterest with _$UserInterest  {
  factory UserInterest({
    int? interest_id,
    String? interest_name,
  }) = _UserInterest;
    factory UserInterest.fromJson(Map<String, Object?> json)
      => _$UserInterestFromJson(json);
}

@freezed
class Exhibitor with _$Exhibitor  {
  const Exhibitor._();
  const factory Exhibitor({
    int? id,
    String? api_token,
    String? full_name,
    String? profile,
    String? email,
    String? phone,
    String? position,
    String? company,
    int? status_contact,
    int? is_recondition,
    bool? is_exhibitor,
    String? company_info,
    // @Default([]) List<UserCategory>? user_category,
    // @Default([]) List<UserInterest>? user_interest,
  }) = _Exhibitor;
    factory Exhibitor.fromJson(Map<String, Object?> json)
      => _$ExhibitorFromJson(json);
}

@freezed
class Attendee with _$Attendee  {
  const factory Attendee({
    int? id,
    String? api_token,
    @Default('') String? full_name,
    String? profile,
    @Default('') String? phone,
    @Default('') String? position,
    @Default('') String? company,
    @Default('') String? email,
    int? status_contact,
    int? is_recondition,
    bool? is_exhibitor,
    @Default('') String? company_info,
    @Default([]) List<UserCategory>? user_category,
    @Default([]) List<UserInterest>? user_interest,
  }) = _Attendee;
    factory Attendee.fromJson(Map<String, Object?> json)
      => _$AttendeeFromJson(json);
}

@freezed
class UserData with _$UserData  {
  const factory UserData({
    Attendee? attendee,
    Exhibitor? exhibitor,
  }) = _UserData;
  factory UserData.fromJson(Map<String, Object?> json)
      => _$UserDataFromJson(json);
}

class UserEdit {
  final String? first_name;
  final String? last_name;
  final String? email;
  final String? phone;
  final String? company;
  final String? position;
  final int? status_contact;
  final String? api_token;
  final List<UserCategory>? categorys;
  final List<UserInterest>? interests;
  final int? status_notification;
  
  UserEdit({
    this.first_name,
    this.last_name,
    this.email,
    this.phone,
    this.company,
    this.position,
    this.status_contact,
    this.api_token,
    this.categorys,
    this.interests,
    this.status_notification,
  }); 
}

class UserSignUp {
  final String? password;
  final String? first_name;
  final String? last_name;
  final String? email;
  final String? phone;
  final String? company;
  final String? position;
  final int? status_contact;
  final String? api_token;
  final List<UserCategory>? categorys;
  final List<UserInterest>? interests;
  final int? status_notification;
  UserSignUp({
    this.password,
    this.first_name,
    this.last_name,
    this.email,
    this.phone,
    this.company,
    this.position,
    this.status_contact,
    this.api_token,
    this.categorys,
    this.interests,
    this.status_notification,
  }); 
}


class UserLogin {
  final String email;
  final String password;
  
  UserLogin({
    required this.email,
    required this.password,
  }); 
}
