import 'package:flutter/cupertino.dart';
import 'package:parkat_flutter_app/style.dart';

class DistanceWidget extends StatelessWidget{
  final double distKM;
  final int distTimeMin;

  const DistanceWidget({super.key, required this.distKM, required this.distTimeMin});
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        // UserPositionIndicator(),
        Text("$distTimeMin мин•$distKM км", style: textTheme.titleSmall),
      ]
    );
  }

}