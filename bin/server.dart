import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

import 'handler/topic.dart';

final _router = Router()..get('/topics', topicsHandler);

void main(List<String> args) async {
  final ip = InternetAddress.anyIPv4;

  final _handler = Pipeline().addMiddleware(logRequests()).addHandler(_router);

  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(_handler, ip, port);
  print('Server listening on port ${server.port}');
}
