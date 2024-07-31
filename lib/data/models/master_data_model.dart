// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/master_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'master_data_model.freezed.dart';
part 'master_data_model.g.dart';


@freezed
class Interest with _$Interest  {
  const factory Interest({
    @Default([]) List<InterestData> data
  }) = _Interest;
  factory Interest.fromJson(Map<String, Object?> json)
      => _$InterestFromJson(json);
}

@freezed
class Category with _$Category  {
  const factory Category({
    @Default([]) List<CategoryData> data
  }) = _Category;
  factory Category.fromJson(Map<String, Object?> json)
      => _$CategoryFromJson(json);
}
