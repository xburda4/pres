import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:postgres/postgres.dart';

late Connection conn;

Future<void> init(InternetAddress ip, int port) async {
  final env = DotEnv(includePlatformEnvironment: true)..load();
  // Any code initialized within this method will only run on server start, any hot reloads
  // afterwards will not trigger this method until a hot restart.
  conn = await Connection.open(
    Endpoint(
      host: env['DB_HOST']!,
      database: env['DB_DATABASE']!,
      username: env['DB_USER'],
      password: env['DB_PASSWORD'],
      port: int.parse(env['DB_PORT']!),
    ),
    settings: const ConnectionSettings(
      sslMode: SslMode.disable,
    ),
  );
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  // 1. Execute any custom code prior to starting the server...

  // 2. Use the provided `handler`, `ip`, and `port` to create a custom `HttpServer`.
  // Or use the Dart Frog serve method to do that for you.
  return serve(handler, ip, port);
}
