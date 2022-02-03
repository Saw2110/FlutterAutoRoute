import 'package:auto_route/annotations.dart';
import 'package:autoroute/Screen/home_screen.dart';
import 'package:autoroute/Screen/second_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // AutoRoute(path: '/', page: SplashPage, initial: true),
    AutoRoute(path: '/homeScreen', page: HomeScreen),
    AutoRoute(path: '/secondScreen', page: SecondScreen),
  ],
)
class $Router {}
