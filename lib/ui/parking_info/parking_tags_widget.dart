import 'package:flutter/cupertino.dart';
import 'package:parkat_flutter_app/style.dart';
import 'package:parkat_flutter_app/ui/parking_info/parking_info_widget.dart';

class ParkingTagsWidget extends StatelessWidget {
  final List<Tag> tags;

  const ParkingTagsWidget({super.key, required this.tags});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Особенности", style: textTheme.titleMedium,),
        SizedBox(height: 16,),
        ListView.builder(
          shrinkWrap: true,
            itemCount: tags.length,
            itemBuilder: (context, id) =>
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  Container(
                    height: 34,
                    width: 34,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ColorValues.darkGrayBackground,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(tags[id].emoji, style: textTheme.labelLarge,),
                  ),
                  SizedBox(width: 12,),
                  Text(tags[id].description, style: textTheme.titleSmall,)
                ],
              ),
            )
        )

      ],
    );
  }

}