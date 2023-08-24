import 'package:flutter/material.dart';
import 'package:flutter_module/domain/home/routes.dart';
import 'package:flutter_module/routes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeRoutes.home,
      onGenerateRoute: (settings) => AppRoutes().onGenerateRoute(settings),
    );
  }
}
