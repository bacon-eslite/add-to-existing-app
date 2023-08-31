import 'package:flutter/material.dart';
import 'package:flutter_module/common/config/config.dart';

import 'feature/feature.dart';

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
