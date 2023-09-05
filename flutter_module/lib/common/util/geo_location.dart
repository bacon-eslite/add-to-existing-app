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

  Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
