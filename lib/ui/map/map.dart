import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:parkat_api/parkat_api.dart';
import 'package:parkat_flutter_app/logic/models/lat_lng.dart';
import 'package:parkat_flutter_app/ui/map/parking_spot_annotation.dart';

import '../../logic/services/mapbox_service.dart';

import '../../utils.dart';

class ParkingMap extends StatefulWidget {
  const ParkingMap({super.key});

  @override
  State<StatefulWidget> createState() => ParkingMapState();
}

class ParkingMapState extends State<ParkingMap> {
  ParkingMapState();

  late MapboxMap? mapboxMap;
  late PointAnnotationManager? pointAnnotationManager;
  late PointAnnotationManager? currPosAnnotationManager;
  late SelectedAnnotation? selectionManager;
  LatLng? currentPosition = LatLng(lat: 55.928449, lng: 37.499818);

  @override
  Widget build(BuildContext context) {
    //getCoords();
    return StreamBuilder(
        stream: Geolocator.getPositionStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final pos = UserPosition(
                LatLng(
                    lat: snapshot.data!.latitude,
                    lng: snapshot.data!.longitude),
                snapshot.data!.heading);
            return Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  mapboxMap?.flyTo(
                      CameraOptions(
                          center: pos.coords.toPoint().toJson(), zoom: 15.0),
                      MapAnimationOptions());
                },
                child: const Icon(Icons.navigation),
              ),
              body: MapWidget(
                key: const ValueKey("mapWidget"),
                onMapCreated: _onMapCreated,
                resourceOptions:
                    ResourceOptions(accessToken: MapService.accessToken),
                cameraOptions: CameraOptions(
                    center: pos.coords.toPoint().toJson(), zoom: 15.0),
                styleUri:
                    "mapbox://styles/adminparkat/clgqbigrp00i701qqan1k9f3u",
                onStyleLoadedListener: (_) => _onStyleLoaded(context, pos),
                onTapListener: (coord) => _onMapTap(coord),
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  _onMapCreated(MapboxMap mapboxMap) {
    debug("Map created");
    this.mapboxMap = mapboxMap;
    debug(currentPosition.toString());
  }

  _onStyleLoaded(BuildContext context, UserPosition pos) {
    debug("Style loaded");
    mapboxMap?.annotations.createPointAnnotationManager().then((value) async {
      pointAnnotationManager = value;
      selectionManager =
          SelectedAnnotation(pointManager: pointAnnotationManager);
      await ParkingSpotAnnotation.loadAsset();
      final parkingGroups = await MapService.getParkingSpots(pos);
      mapboxMap?.location.updateSettings(LocationComponentSettings(
          puckBearingSource: PuckBearingSource.HEADING,
          locationPuck: LocationPuck(
              locationPuck2D: LocationPuck2D(
                  topImage: ParkingSpotAnnotation.current,
                  bearingImage: ParkingSpotAnnotation.bearing,
                  shadowImage: null))));
      final annotations = await pointAnnotationManager?.createMulti(
          parkingGroups!
              .map((group) => ParkingSpotAnnotation.getParkingOptions(
                  LatLng(lat: group.latitude!, lng: group.longitude!)
                      .toPoint()))
              .toList());

      final annotationToParking = {
        for (var it in Iterable.generate(annotations!.length))
          annotations[it]!.id: parkingGroups![it]
      }; /*
      pointAnnotationManager
          ?.create(ParkingSpotAnnotation.getCurrentPositionOptions(pos));*/
      pointAnnotationManager?.addOnPointAnnotationClickListener(
          ParkingAnnotationClickListener(
              selectionManager!, annotationToParking, context));
    });
  }

  _onMapTap(ScreenCoordinate coord) async {
    if (selectionManager?.selectedParking == null ||
        selectionManager?.isSelecting()) return;
    if (kDebugMode) {
      print("Map click");
    }
    selectionManager!.unselect();
    Navigator.pop(context);
  }
}

/*
class ParkingMapTest extends StatelessWidget {
  const ParkingMapTest({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Geolocator.getPositionStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final pos = snapshot.data!;
            debug("${pos.latitude} ${pos.longitude}");
            return MapWidget(
              onMapCreated: _onMapCreated,
              resourceOptions:
              ResourceOptions(accessToken: MapService.accessToken),
              cameraOptions: CameraOptions(
                  center: LatLng(lat: pos.latitude,
                      lng: pos.longitude).toPoint().toJson(),
                  zoom: 12.0),
              styleUri:
              "mapbox://styles/adminparkat/clgqbigrp00i701qqan1k9f3u",
              */
/*onStyleLoadedListener: (_) => _onStyleLoaded(context, pos),
              onTapListener: (coord) => _onMapTap(coord),*/ /*

            );
          } else { return CircularProgressIndicator();}
        }
    );
  }

  _onMapCreated(MapboxMap mapboxMap) {

  }

}
*/
