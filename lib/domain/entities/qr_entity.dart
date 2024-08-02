// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'qr_entity.freezed.dart';
part 'qr_entity.g.dart';


@freezed
class QRContactData with _$QRContactData  {
  const factory QRContactData({
    int? user_id,
    @Default('') String? first_name,
    @Default('') String? last_name,
    @Default('') String? tel,
    @Default('') String? company,
    @Default('') String? position,
    @Default('') String? profile_image,
    @Default('') String? email,
    @Default([]) List<UserInterest>? user_interest,
  }) = _QRContactData;
  factory QRContactData.fromJson(Map<String, Object?> json)
      => _$QRContactDataFromJson(json);
}

@freezed
class QRPrivateEventData with _$QRPrivateEventData  {
  const factory QRPrivateEventData({
    int? event_id,
    @Default('') String? category_title,
    @Default('') String? title,
    @Default('') String? description,
    @Default('') String? thumnail,
    @Default('') String? image_display,
    @Default('') String? location_name,
    @Default(0.0) double? location_lat,
    @Default(0.0) double? location_lng,
    @Default('') String? date,
    @Default('') String? date_end,
    @Default('') String? start_time,
    @Default('') String? end_time,
    @Default('') String? show_information,
    @Default('') String? show_register,
    @Default('') String? event_url,
    @Default('') String? venue_name,
    @Default('') String? venue_tel,
    @Default('') String? venue_email,
    @Default('') String? direction_taxi,
    @Default('') String? direction_bts,
    @Default('') String? direction_foot,
    @Default('') String? company_info,
  }) = _QRPrivateEventData;
  factory QRPrivateEventData.fromJson(Map<String, Object?> json)
      => _$QRPrivateEventDataFromJson(json);
}


