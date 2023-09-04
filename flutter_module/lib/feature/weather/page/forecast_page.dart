import 'package:flutter/material.dart';
import 'package:flutter_module/feature/weather/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view/view.dart';

class ForecastPage extends ConsumerWidget {
  final Location location;

  const ForecastPage({
    Key? key,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('Forecast')),
        body: SafeArea(
          child: Column(
            children: [
              Text('Location: ${location.name}'),
              const ForecastView(),
            ],
          ),
        ));
  }
}
