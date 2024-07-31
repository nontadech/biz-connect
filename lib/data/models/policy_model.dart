// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/policy_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'policy_model.freezed.dart';
part 'policy_model.g.dart';

@freezed
class Policy with _$Policy  {
  const factory Policy({
    PolicyData? data,
  }) = _Policy;
  factory Policy.fromJson(Map<String, Object?> json)
      => _$PolicyFromJson(json);
}


@freezed
class PolicyDetail with _$PolicyDetail  {
  const factory PolicyDetail({
    PolicyDetailData? data,
  }) = _PolicyDetail;
  factory PolicyDetail.fromJson(Map<String, Object?> json)
      => _$PolicyDetailFromJson(json);
}

@freezed
class PolicySave with _$PolicySave  {
  const factory PolicySave({
    PolicySaveData? data,
  }) = _PolicySave;
  factory PolicySave.fromJson(Map<String, Object?> json)
      => _$PolicySaveFromJson(json);
}

