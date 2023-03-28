import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:giftie_app/models/shopping_cart.dart';
import 'package:giftie_app/shared/app_colors.dart';

class OrderList extends StatefulWidget {
  const OrderList({
    super.key,
  });

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ShoppingCart>(
      builder: (context, value, child) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                tileColor: AppColors.plainWhite,
                title: Text(
                  value.orders[index].serviceName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  alignment: Alignment.center,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "\$${value.orders[index].amount}",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        child: const Icon(Icons.delete),
                        onTap: () {
                          Provider.of<ShoppingCart>(context, listen: false)
                              .deleteOrder(index);
                        },
                      ),
                    ],
                  ),
                ),
                leading: SizedBox(
                  width: 50,
                  child: Image.asset(value.orders[index].imagePath),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: value.orders.length,
        );
      },
    );
  }
}
