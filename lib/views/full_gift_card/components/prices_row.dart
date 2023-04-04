import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:giftie_app/providers/gift_card_order.dart';
import 'package:giftie_app/views/full_gift_card/components/animated_choice_button.dart';

class PricesRow extends StatelessWidget {
  final List<int> prices;
  const PricesRow({
    super.key,
    required this.prices,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<GiftCardOrder>(
      builder: (context, value, child) {
        return Consumer<GiftCardOrder>(
          builder: (context, value, child) {
            return SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView.separated(
                itemCount: prices.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => AnimatedChoiceButton(
                  isSelected:
                      value.amount != null && value.amount == prices[index]
                          ? true
                          : false,
                  onTap: () {
                    Provider.of<GiftCardOrder>(context, listen: false)
                        .updateAmount(prices[index]);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "\$${prices[index].toString()}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 20),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 10),
              ),
            );
          },
        );
      },
    );
  }
}



//   AnimatedChoiceButton(
//     isSelected: value.amount == prices.first ? false : true,
//     child: Text(
//       "\$${prices.first.toString()}",
//       style: Theme.of(context)
//           .textTheme
//           .bodyLarge
//           ?.copyWith(fontSize: 20),
//     ),
//   ),
//   AnimatedChoiceButton(
//     isSelected: value.amount == prices[1] ? false : true,
//     child: Text(
//       "\$${prices[1].toString()}",
//       style: Theme.of(context)
//           .textTheme
//           .bodyLarge
//           ?.copyWith(fontSize: 20),
//     ),
//   ),
//   AnimatedChoiceButton(
//     isSelected: value.amount == prices[2] ? false : true,
//     width: 58,
//     child: Text(
//       "\$${prices[2].toString()}",
//       style: Theme.of(context)
//           .textTheme
//           .bodyLarge
//           ?.copyWith(fontSize: 20),
//     ),
//   ),
//   AnimatedChoiceButton(
//     isSelected: value.amount == prices[3] ? false : true,
//     width: 143,
//     child: Text(
//       "other amount",
//       style: Theme.of(context)
//           .textTheme
//           .bodyLarge
//           ?.copyWith(fontSize: 20),
//     ),
//   ),
// ],
