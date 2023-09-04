import 'package:flutter/material.dart';
import 'package:flutter_module/feature/weather/provider/provider.dart';
import 'package:flutter_module/feature/weather/view/view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CityList extends ConsumerWidget {
  const CityList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        for (final location in ref.watch(locationListProvider))
          CityTile(location: location),
      ],
    );
  }
}
