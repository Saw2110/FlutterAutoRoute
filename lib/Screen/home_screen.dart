import 'package:auto_route/auto_route.dart';
import 'package:autoroute/routes/route.gr.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // AutoRouter.of(context).push(const SecondScreen());
            // context.router.pushNamed('/secondScreen');
            AutoRouter.of(context).replace(const SecondScreen());
            // context.router.replaceNamed('/secondScreen');
          },
          child: const Text("Navigated to Second Screen"),
        ),
      ),
    );
  }
}
