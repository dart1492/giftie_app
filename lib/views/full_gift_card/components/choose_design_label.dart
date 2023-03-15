import 'package:flutter/material.dart';

class ChooseDesignLabel extends StatelessWidget {
  const ChooseDesignLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Choose a design",
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20),
      ),
    );
  }
}
