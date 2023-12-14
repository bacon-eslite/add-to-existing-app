import 'package:flutter/material.dart';
import 'package:flutter_module/feature/feature.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();

  await Isar.open([
    CityRepoSchema,
    ForecastRepoSchema,
  ], directory: dir.path);

  runApp(const ProviderScope(child: MyApp()));
}
