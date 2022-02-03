import 'package:flutter/material.dart';

import 'routes/route.gr.dart' as appRoute;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = appRoute.Router();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
