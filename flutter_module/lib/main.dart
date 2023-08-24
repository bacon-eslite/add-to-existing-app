import 'package:flutter/material.dart';
import 'package:flutter_module/domain/home/routes.dart';
import 'package:flutter_module/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeRoutes.counter,
      onGenerateRoute: (settings) => AppRoutes().onGenerateRoute(settings),
    );
  }
}
