import 'package:flutter/material.dart';

class ChooseAmountLabel extends StatelessWidget {
  const ChooseAmountLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Choose an amount",
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
