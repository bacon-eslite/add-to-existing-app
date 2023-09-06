import 'package:flutter_module/common/util/util.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocation {
  Future<bool> get isPermissionGranted async => [
        LocationPermission.always,
        LocationPermission.whileInUse
      ].contains(await grantPermission());

  Future grantPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission;
  }

  Future<Position?> getCurrentPosition() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      return position;
    } catch (e) {
      Logger.e('get position failed: $e');
      return null;
    }
  }
}
