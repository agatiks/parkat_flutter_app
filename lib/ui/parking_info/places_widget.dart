import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parkat_flutter_app/style.dart';

class ParkingWidget extends StatelessWidget {
  final int available;
  final int all;
  final int costRublesPerHour;

  ParkingWidget(this.available, this.all, this.costRublesPerHour);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        PlacesWidget(
          available: available,
          all: all,
        ),
        SizedBox(
          width: 10,
        ),
        CostWidget(costRublesPerHour: costRublesPerHour)
      ],
    );
  }
}

class PlacesWidget extends StatelessWidget {
  final int available;
  final int all;

  const PlacesWidget({super.key, required this.available, required this.all});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
            height: 22,
            width: 50,
            child: LinearProgressIndicator(
              value: available / all,
              backgroundColor: ColorValues.purpleDisabled,
              color: ColorValues.purpleMain,
              borderRadius: BorderRadius.circular(6),
            )),
        Text(
          available.toString(),
          style: textTheme.labelSmall,
        )
      ],
    );
  }
}

class CostWidget extends StatelessWidget {
  final int costRublesPerHour;

  const CostWidget({super.key, required this.costRublesPerHour});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        height: 22,
        width: 50,
        decoration: BoxDecoration(
          color: ColorValues.purpleDisabled,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text('$costRublesPerHour ₽', style: textTheme.labelSmall,));
  }
}
