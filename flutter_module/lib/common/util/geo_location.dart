import 'package:geolocator/geolocator.dart';

import 'util.dart';

class GeoLocation {
  Future<bool> get isPermissionGranted async => [
        LocationPermission.always,
        LocationPermission.whileInUse
      ].contains(await grantPermission());

  Future grantPermission() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      return permission;
    } catch (e) {
      Logger().e('get permission failed: ${e.runtimeType}\n$e');
      return LocationPermission.denied;
    }
  }

  Future<Position?> getCurrentPosition() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      return position;
    } catch (e) {
      Logger().e('get position failed: ${e.runtimeType}\n$e');
      return null;
    }
  }
}
