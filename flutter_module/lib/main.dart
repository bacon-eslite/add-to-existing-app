import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final dir = await getApplicationDocumentsDirectory();
  //
  // await Isar.open([
  //   CityRepoSchema,
  //   ForecastRepoSchema,
  // ], directory: dir.path);

  runApp(const ProviderScope(child: MyApp()));
}
