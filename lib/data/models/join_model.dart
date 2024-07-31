// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'join_model.freezed.dart';
part 'join_model.g.dart';


@freezed
class JoinMenu with _$JoinMenu  {
  const factory JoinMenu({
    @Default([]) List<JoinMenuData> settings,
  }) = _JoinMenu;
  factory JoinMenu.fromJson(Map<String, Object?> json)
      => _$JoinMenuFromJson(json);
}

@freezed
class JoinAgenda with _$JoinAgenda  {
  const factory JoinAgenda({
    @Default([]) List<String> room_list,
    @Default([]) List<SessionData> sessions
  }) = _JoinAgenda;
  factory JoinAgenda.fromJson(Map<String, Object?> json)
      => _$JoinAgendaFromJson(json);
}


