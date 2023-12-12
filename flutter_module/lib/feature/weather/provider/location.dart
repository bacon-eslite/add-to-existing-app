import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/util/geo_location.dart';
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

  Location getByName(String name) {
    return state.firstWhere((element) => element.name == name);
  }

  Future<Location?> getCurrentLocation() async {
    final geoLocation = await GeoLocation().getCurrentPosition();
    if (geoLocation == null) return null;

    return Location(
      name: 'Current Location',
      latitude: geoLocation.latitude,
      longitude: geoLocation.longitude,
    );
  }
}
