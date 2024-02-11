import 'package:flutter/cupertino.dart';
import 'package:parkat_api/parkat_api.dart';
import 'package:parkat_flutter_app/logic/models/lat_lng.dart';
import 'package:parkat_flutter_app/style.dart';
import 'package:parkat_flutter_app/ui/parking_info/parking_actions.dart';
import 'package:parkat_flutter_app/ui/parking_info/parking_tags_widget.dart';
import 'package:parkat_flutter_app/ui/parking_info/places_widget.dart';

import 'copy_coords_button.dart';
import 'distance_widget.dart';

class ParkingInfoWidget extends StatelessWidget {
  final ParkingGroupDto parking;
  final String parkingName = "Парковка в ТРЦ Европейский";
  final String parkingAddress = "Площадь киевского вокзала, 2";
  final double distKM = 1.7;
  final int distTimeMin = 4;
  final int available = 16;
  final int all = 18;
  final costRublesPerHour = 100;
  final tags = const [
    Tag('🧑🏼‍🦽', 'Места для людей с инвалидностью'),
    Tag('🚚', 'Места для грузовиков'),
    Tag('🔋', 'Зарядка для электромобилей')
  ];

  const ParkingInfoWidget({super.key, required this.parking});
  @override
  Widget build(BuildContext context) =>
      Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(parkingAddress ?? "Нет адреса", style: textTheme.titleMedium,), //parking.name
            SizedBox(height: 4,),
            Text(parkingName ?? "Нет названия", style: textTheme.titleSmall,),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              DistanceWidget(distTimeMin: distTimeMin, distKM: distKM),
              ParkingWidget(available, all, costRublesPerHour)
            ],),
            SizedBox(height: 24,),
            ParkingTagsWidget(tags: tags,),
            SizedBox(height: 24,),
            //CopyCoordsButton(coords: LatLng(lat: parking.latitude!, lng: parking.longitude!)),
            const ParkingActions()
          ],
        ),
      );

}

class Tag {
  final String emoji;
  final String description;

  const Tag(this.emoji, this.description);
}