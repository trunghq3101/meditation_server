import 'dart:convert';
import 'dart:io';
import 'model/topic.model.dart';

final topicStorage = AssetTopicStorage();

abstract class TopicStorage {
  Future<List<Topic>> load();
}

class AssetTopicStorage extends TopicStorage {
  @override
  Future<List<Topic>> load() async {
    final topicsFile = File('bin/data/mock/topics/topics.json');
    final jsonContent = await topicsFile.readAsString();
    final List<dynamic> jsonData = jsonDecode(jsonContent);
    return jsonData.map((e) => Topic.fromJson(e)).toList();
  }
}
