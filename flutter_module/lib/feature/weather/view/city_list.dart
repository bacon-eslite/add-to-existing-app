import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/provider.dart';
import 'view.dart';

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
