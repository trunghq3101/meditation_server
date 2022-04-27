import 'dart:convert';

import 'package:shelf/shelf.dart';

import '../data/topic_storage.dart';

Future<Response> topicsHandler(Request req) async {
  final topics = await topicStorage.load();
  return Response.ok(
    jsonEncode(
      topics.map((e) => e.toJson()).toList(),
    ),
  );
}
