import 'package:flutter/material.dart';
import 'package:task_4/shared/app_colors.dart';

class OrderList extends StatelessWidget {
  const OrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          tileColor: AppColors.plainWhite,
          title: Text(
            "PlayStation",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          trailing: Container(
            alignment: Alignment.center,
            width: 70,
            child: Row(
              children: [
                Text(
                  "125\$",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(Icons.delete),
              ],
            ),
          ),
          leading: SizedBox(
            width: 50,
            child: Image.asset('assets/ps_logo.png'),
          ),
        )
      ],
    );
  }
}
