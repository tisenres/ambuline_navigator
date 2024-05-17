import 'package:geolocator/geolocator.dart';

import 'AppLatLong.dart';
import 'app_location.dart';

class LocationService implements AppLocation {
  final defLocation = const MoscowLocation();

  @override
  Future<AppLatLong> getCurrentLocation() {
    @override
    Future<AppLatLong> getCurrentLocation() async {
      return Geolocator.getCurrentPosition().then((value) {
        return AppLatLong(lat: value.latitude, long: value.longitude);
      }).catchError(
        (_) => defLocation,
      );
    }

    throw UnimplementedError();
  }

  @override
  Future<bool> checkPermission() {
    return Geolocator.checkPermission()
        .then((value) =>
            value == LocationPermission.always ||
            value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }

  @override
  Future<bool> requestPermission() {
    return Geolocator.requestPermission()
        .then((value) =>
            value == LocationPermission.always ||
            value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }
}
