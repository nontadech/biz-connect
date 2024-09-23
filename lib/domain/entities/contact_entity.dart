// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact_entity.freezed.dart';
part 'contact_entity.g.dart';


@freezed
class ContactData with _$ContactData  {
  const factory ContactData({
    int? user_id,
    @Default('') String? first_name,
    @Default('') String? last_name,
    @Default('') String? phone,
    @Default('') String? company,
    @Default('') String? position,
    @Default('') String? email,
    @Default('') String? profile_image,
    @Default([]) List<UserInterest>? user_interest,
    @Default('') String? industry_sector,
    @Default(0) dynamic attendee_id
  }) = _ContactData;
  factory ContactData.fromJson(Map<String, Object?> json)
      => _$ContactDataFromJson(json);
}
