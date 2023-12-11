import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/model.dart';
import '../service/service.dart';

part 'location.g.dart';

@riverpod
class LocationListProvider extends _$LocationListProvider {
  @override
  List<Location> build() => [];

  Future<void> loadLocations(String city) async {
    final locations = await GeocodingService().getLocations(city: city);
    state = locations ?? [];
  }

  void reset() {
    state = [];
  }
}
