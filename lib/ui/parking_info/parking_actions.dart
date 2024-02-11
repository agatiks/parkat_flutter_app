import 'package:flutter/cupertino.dart';
import 'package:parkat_flutter_app/style.dart';
import 'package:parkat_flutter_app/ui/common/app_button.dart';

class ParkingActions extends StatelessWidget {
  const ParkingActions({super.key});

  @override
  Widget build(BuildContext context) => Row(
        children: [
          AppButton(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            backgroundColor: ColorValues.purpleMain,
            child: Text("Маршрут",
                style:
                    textTheme.labelMedium?.copyWith(color: ColorValues.white)),
          ),
          const SizedBox(
            width: 12,
          ),
          AppButton(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              backgroundColor: ColorValues.darkGrayBackground,
              child: Text(
                "Оплатить парковку",
                style: textTheme.labelMedium?.copyWith(color: ColorValues.text),
              )),
        ],
      );
}
