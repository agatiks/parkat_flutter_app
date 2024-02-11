import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:parkat_api/src/model/parking_group_dto.dart';
import 'package:parkat_flutter_app/logic/models/lat_lng.dart';
import 'package:parkat_flutter_app/logic/models/parking_spot_annotation_options.dart';
import 'package:parkat_flutter_app/ui/map/map.dart';
import 'package:parkat_flutter_app/ui/parking_info/parking_info_widget.dart';

import '../../logic/services/mapbox_service.dart';
import '../../style.dart';
import '../../utils.dart';

class ParkingSpotAnnotation {
  static Uint8List? image;
  static Uint8List? selectedImage;
  static Uint8List? current;

  static Future<void> loadAsset() async {
    image = await loadImageFromAssets('assets/parking_spot/icon.png');
    selectedImage =
        await loadImageFromAssets('assets/parking_spot/selected_icon.png');
    current = await loadImageFromAssets('assets/current_icon.png');
  }

  static Future<Uint8List> loadImageFromAssets(String path) async =>
      (await rootBundle.load(path)).buffer.asUint8List();

  static PointAnnotationOptions getParkingOptions(Point point) {
    debug(point.toJson().toString());
    return ParkingSpotAnnotationOptions(geometry: point.toJson(), image: image);
  }

  static PointAnnotationOptions getCurrentPositionOptions(UserPosition pos) {
    debug(pos.coords.toPoint().toJson().toString());
    return ParkingSpotAnnotationOptions(geometry: pos.coords.toPoint().toJson(), image: current, iconRotate: pos.orientation! - 45);
  }

}

class SelectedAnnotation {
  final PointAnnotationManager? pointManager;
  PointAnnotation? selectedParking;
  bool selecting = false;
  Timer? timer;

  SelectedAnnotation({required this.pointManager});

  select(PointAnnotation parking) {
    startSelecting();
    selectedParking = parking;
    selectedParking!.image = ParkingSpotAnnotation.selectedImage;
    selectedParking!.iconImage = null;
    pointManager?.update(selectedParking!);
  }

  unselect() {
    debug("Unselect point");
    if (selectedParking != null) {
      selectedParking!.image = ParkingSpotAnnotation.image;
      selectedParking!.iconImage = null;
      pointManager?.update(selectedParking!);
      selectedParking = null;
    }
  }

  startSelecting() {
    selecting = true;
    timer = Timer(const Duration(seconds: 1), () {
      selecting = false;
    });
  }

  isSelecting() => selecting;
}

class ParkingAnnotationClickListener extends OnPointAnnotationClickListener {
  final SelectedAnnotation selectionManager;
  final Map<String, ParkingGroupDto> coordsToParkings;
  final BuildContext context;

  ParkingAnnotationClickListener(this.selectionManager,  this.coordsToParkings, this.context);

  @override
  void onPointAnnotationClick(PointAnnotation annotation) {
    debug("PointAppointment click");
    final ParkingGroupDto parking = coordsToParkings[annotation.id]!;
    showBottomSheet(
      context: context,
      builder: (context) => ParkingInfoWidget(parking: parking),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    ),
    backgroundColor: StyleValues.colorScheme.primary);
    selectionManager.select(annotation);
  }
}
