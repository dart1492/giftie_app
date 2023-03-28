import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:giftie_app/models/gift_card_order.dart';
import 'package:giftie_app/views/full_gift_card/components/animated_choice_button.dart';

class ColorsRow extends StatelessWidget {
  final List<Color> availableColors;
  const ColorsRow({
    super.key,
    required this.availableColors,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<GiftCardOrder>(
      builder: (context, value, child) {
        return SizedBox(
          width: double.infinity,
          height: 50,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: availableColors.length,
            itemBuilder: (context, index) => AnimatedChoiceButton(
              height: 50,
              width: 50,
              onTap: () {
                Provider.of<GiftCardOrder>(context, listen: false)
                    .updateColor(availableColors[index]);
              },
              isSelected:
                  value.color != null && value.color == availableColors[index]
                      ? true
                      : false,
              color: availableColors[index],
            ),
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}

// return Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: 
//         );