import 'package:flutter/material.dart';
import 'package:task_4/views/full_gift_card/components/animated_choice_button.dart';

class PricesRow extends StatelessWidget {
  final List<int> prices;
  const PricesRow({
    super.key,
    required this.prices,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedChoiceButton(
          child: Text(
            "\$${prices.first.toString()}",
            style:
                Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        AnimatedChoiceButton(
          child: Text(
            "\$${prices[1].toString()}",
            style:
                Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        AnimatedChoiceButton(
          width: 58,
          child: Text(
            "\$${prices[2].toString()}",
            style:
                Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
        AnimatedChoiceButton(
          width: 143,
          child: Text(
            "other amount",
            style:
                Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
