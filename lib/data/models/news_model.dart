import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class News with _$News  {
  const factory News({
    @Default([]) List<EventList> data
  }) = _News;
  factory News.fromJson(Map<String, Object?> json, )
      => _$NewsFromJson(json);
}
