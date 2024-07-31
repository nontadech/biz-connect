// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'body_model.freezed.dart';
part 'body_model.g.dart';


@freezed
class Body with _$Body  {
  const factory Body({
    @Default(false) bool success,
    String? message,
    @Default(400) dynamic status
  }) = _Body;
  factory Body.fromJson(Map<String, Object?> json)
      => _$BodyFromJson(json);
}
