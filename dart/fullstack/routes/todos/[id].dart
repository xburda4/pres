import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';
import '../../main.dart';

FutureOr<Response> onRequest(RequestContext context, String id) async {
  switch (context.request.method) {
    case HttpMethod.patch:
      return _patch(context);
    case HttpMethod.get:
    case HttpMethod.post:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _patch(RequestContext context) async {
  final params = context.request.uri.queryParameters;
  await conn.execute(
    Sql.named(
      'UPDATE notes SET finished=true WHERE id=@id',
    ),
    parameters: {
      'id': params['id'],
    },
  );

  return Response.json(
    statusCode: HttpStatus.accepted,
  );
}
