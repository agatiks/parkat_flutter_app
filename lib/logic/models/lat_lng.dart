import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class LatLng {
  final double lat;
  final double lng;

  LatLng({required this.lat, required this.lng});

  Point toPoint() => Point(coordinates: Position(lng, lat));

  @override
  String toString() {
    return "$lat, $lng";
  }
}

class UserPosition {
  final LatLng coords;
  final double? orientation;

  UserPosition(this.coords, this.orientation);
}