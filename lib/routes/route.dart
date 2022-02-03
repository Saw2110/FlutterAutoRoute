import 'package:auto_route/annotations.dart';
import 'package:autoroute/Screen/home_screen.dart';
import 'package:autoroute/Screen/second_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,routes',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: HomeScreen, initial: true),
    AutoRoute(path: '/secondScreen', page: SecondScreen),
  ],
)
class $Router {}
