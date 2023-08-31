import 'package:flutter/material.dart';
import 'package:flutter_module/feature/feature.dart';
import 'package:flutter_module/common/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

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
