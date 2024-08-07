// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'poll_entity.freezed.dart';
part 'poll_entity.g.dart';

@freezed
class Choice with _$Choice  {
  factory Choice({
    @Default("") String? id,
    @Default("") String? awnser,
    @Default(false) bool? isSelect,
  }) = _Choice;
    factory Choice.fromJson(Map<String, Object?> json)
      => _$ChoiceFromJson(json);
}

@freezed
class PollData with _$PollData  {
  factory PollData({
    @Default("") String? id,
    @Default("") String? question,
    @Default([]) List<Choice>? choice_list,
  }) = _PollData;
    factory PollData.fromJson(Map<String, Object?> json)
      => _$PollDataFromJson(json);
}

@freezed
class Poll with _$Poll  {
  factory Poll({
    @Default([]) List<PollData>? data,
  }) = _Poll;
    factory Poll.fromJson(Map<String, Object?> json)
      => _$PollFromJson(json);
}


class PollInput {
  final String? poll_id;
  final String? choice_id;
  final int? page;
  
  PollInput({
    this.poll_id,
    this.choice_id,
    this.page
  }); 
}