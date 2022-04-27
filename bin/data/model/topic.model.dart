import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.model.freezed.dart';
part 'topic.model.g.dart';

@freezed
class Topic with _$Topic {
  const factory Topic({
    required String title,
    required String thumbnail,
    required String color,
    required String titleColor,
  }) = _Topic;

  factory Topic.fromJson(Map<String, Object?> json) => _$TopicFromJson(json);
}
