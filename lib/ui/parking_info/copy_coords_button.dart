import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parkat_flutter_app/style.dart';

import '../../logic/models/lat_lng.dart';

class CopyCoordsButton extends StatelessWidget {
  final LatLng coords;

  const CopyCoordsButton({super.key, required this.coords});

  @override
  Widget build(BuildContext context) =>
      GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: StyleValues.colorScheme.tertiary,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Row (
            children: [
              Text("${coords.lat}, ${coords.lng}"),
              const Icon(Icons.copy_all_outlined)
            ],
          ),
        ),
      );

}