import 'package:restaurant_manager/config/app_route.dart';
import 'package:restaurant_manager/view/splash_view.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colombo Pitza',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      onGenerateRoute: AppRoute.onGenerateRoute,
      home: const SplashView(),
    );
  }
}
