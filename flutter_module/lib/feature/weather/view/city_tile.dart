import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../config/config.dart';
import '../model/model.dart';
import '../provider/provider.dart';

class CityTile extends ConsumerWidget {
  final City location;

  const CityTile({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: location.name == null ? null : Text(location.name!),
      subtitle: location.city == null ? null : Text(location.city!),
      trailing: IconButton(
          onPressed: () {
            ref.read(cityListProvider.notifier).remove(location);
          },
          icon: const Icon(Icons.close)),
      onTap: () async {
        if (location.latitude == null || location.longitude == null) return;
        context.push('${WeatherRoutes.forecast}/${location.name}');
      },
    );
  }
}
