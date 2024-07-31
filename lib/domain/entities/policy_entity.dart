// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'policy_entity.freezed.dart';
part 'policy_entity.g.dart';

enum TermConditionType {
  pdpa,
  recondition,
}

@freezed
class PolicyData with _$PolicyData  {
  const factory PolicyData({
    int? id,
    @Default('') String? api_token,
    @Default(0) int? is_pdpa,
    @Default(0) int? is_recondition,
    int? attendee_id
  }) = _PolicyData;
  factory PolicyData.fromJson(Map<String, Object?> json)
      => _$PolicyDataFromJson(json);
}


@freezed
class PolicyDetailData with _$PolicyDetailData  {
  const factory PolicyDetailData({
    int? active,
    TermConditionType? type,
    String? description,
  }) = _PolicyDetailData;
  factory PolicyDetailData.fromJson(Map<String, Object?> json)
      => _$PolicyDetailDataFromJson(json);
}

@freezed
class PolicySaveData with _$PolicySaveData  {
  const factory PolicySaveData({
    int? id,
    @Default('') String? api_token,
    @Default('') String? full_name,
    @Default('') String? email,
    @Default('') String? phone,
    @Default('') String? position,
    @Default('') String? action,
    int? attendee_id
  }) = _PolicySaveData;
  factory PolicySaveData.fromJson(Map<String, Object?> json)
      => _$PolicySaveDataFromJson(json);
}