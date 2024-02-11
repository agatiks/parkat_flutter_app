import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class ParkingSpotAnnotationOptions extends PointAnnotationOptions {
  final String? parkingId;
  ParkingSpotAnnotationOptions({this.parkingId, geometry, image, iconRotate}): super(geometry: geometry, image: image, iconRotate: iconRotate);
}