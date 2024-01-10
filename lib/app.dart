import 'package:flutter/material.dart';
import 'package:noteapp/routing/routing.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: "Note App",
      routerConfig: appRouter,
    );
  }
}
