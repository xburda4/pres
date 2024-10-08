import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:fullstack/models/createTodoReq.dart';
import 'package:fullstack/models/todo.dart';
import 'package:postgres/postgres.dart';
import 'package:uuid/uuid.dart';
import '../../main.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context) async {
  final rs = await conn.execute(
    'SELECT id, title, content, created_at FROM notes WHERE finished=false',
  );

  final todos = <Todo>[];
  for (final row in rs) {
    todos.add(
      Todo(
        id: row[0].toString(),
        title: row[1].toString(),
        content: row[2].toString(),
        createdAt: DateTime.parse(row[3].toString()),
        finished: false,
      ),
    );
  }

  return Response.json(body: todos);
}

Future<Response> _post(RequestContext context) async {
  final request = await context.request.json();

  final todo = CreateTodoReq.fromJson(request as Map<String, Object?>);

  if (todo.title == '' || todo.content == '') {
    return Response.json(
      statusCode: HttpStatus.badRequest,
    );
  }

  await conn.execute(
    Sql.named(
      'INSERT INTO notes (id, title, content, created_at, finished) VALUES(@id, @title, @content, @created_at, false)',
    ),
    parameters: {
      'id': const Uuid().v4(),
      'title': todo.title,
      'content': todo.content,
      'created_at': DateTime.now(),
    },
  );

  return Response.json(
    statusCode: HttpStatus.created,
  );
}
