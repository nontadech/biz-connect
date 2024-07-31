// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'setting_entity.freezed.dart';
part 'setting_entity.g.dart';

@freezed
class Setting with _$Setting  {
  factory Setting({
    @Default(LangType.en) LangType language,
    @Default(false) bool isNotification
  }) = _Setting;
  
    factory Setting.fromJson(Map<String, Object?> json)
      => _$SettingFromJson(json);
}
