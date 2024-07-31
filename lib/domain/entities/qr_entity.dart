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
