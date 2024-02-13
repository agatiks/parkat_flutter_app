import 'package:built_collection/built_collection.dart';
import 'package:geolocator/geolocator.dart';
import 'package:parkat_api/parkat_api.dart';
import 'package:parkat_flutter_app/errors.dart';
import 'package:parkat_flutter_app/utils.dart';
import '../models/lat_lng.dart';

import 'package:dio/dio.dart' as dio;

class MapService {
  static final parkatApi = ParkatApi().getDefaultApi();

  static Future<LatLng> getCurrentPos() async {
    debug("Getting position");
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error(AppErrors.get(AppErrorKey.LOCATION_SERVICE_DISABLED));
    }
    debug("Location Service enabled checked");
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return Future.error(
            AppErrors.get(AppErrorKey.LOCATION_PERMISSION_DENIED));
      }
    }
    debug("Permission checked");

    Position position = await Geolocator.getCurrentPosition();
    debug("Current position ${position.toString()}");
    return LatLng(lat: position.latitude, lng: position.longitude);
  }

  static Future<List<ParkingGroupDto>?> getParkingSpots(UserPosition currentPosition) async {
    final response = await parkatApi.getParkingGroupsByCoordinates(parkingSearchRequest: ParkingSearchRequest(
        (builder) {
          builder.latitude = currentPosition.coords.lat;
          builder.longitude = currentPosition.coords.lng;
          builder.radius = 500;
        }
    ));
    debug(response.data.toString());
    return response.data?.asList();
  }

  static const accessToken = String.fromEnvironment("MAPBOX_ACCESS_TOKEN");
}
