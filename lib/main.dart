import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'routes/route.gr.dart' as appRoute;

void main() {
  //this remove # from the url in your web application
  setPathUrlStrategy();
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
