// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'master_data_entity.freezed.dart';
part 'master_data_entity.g.dart';

@freezed
class InterestData with _$InterestData  {
  const factory InterestData({
    int? interest_id,
    String? interest_name,
    @Default(false) bool isSelected,
  }) = _InterestData;
  factory InterestData.fromJson(Map<String, Object?> json)
      => _$InterestDataFromJson(json);
}

@freezed
class CategoryData with _$CategoryData  {
  const factory CategoryData({
    int? cate_id,
    String? cate_name,
    @Default(false) bool isSelected,
  }) = _CategoryData;
  factory CategoryData.fromJson(Map<String, Object?> json)
      => _$CategoryDataFromJson(json);
}
