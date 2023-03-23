import 'package:flutter/material.dart';
import 'package:task_4/models/gift_card_order.dart';
import 'package:task_4/shared/app_colors.dart';

class OrderList extends StatefulWidget {
  final List<GiftCardOrder> checkoutCart;
  final Function(int index) deleteItem;
  const OrderList({
    super.key,
    required this.checkoutCart,
    required this.deleteItem,
  });

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  late List<GiftCardOrder> checkoutCart = widget.checkoutCart;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: checkoutCart.length,
      itemBuilder: (context, index) {
        return ListTile(
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
                  "25",
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
                    widget.deleteItem(index);
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          leading: SizedBox(
            width: 50,
            child: Image.asset(widget.checkoutCart[index].imagePath),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
    );
  }
}

// ListTile(
//           tileColor: AppColors.plainWhite,
//           title: Text(
//             "PlayStation",
//             style: Theme.of(context)
//                 .textTheme
//                 .bodyLarge
//                 ?.copyWith(fontWeight: FontWeight.bold),
//           ),
//           trailing: Container(
//             alignment: Alignment.center,
//             width: 70,
//             child: Row(
//               children: [
//                 Text(
//                   "125\$",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyLarge
//                       ?.copyWith(fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 const Icon(Icons.delete),
//               ],
//             ),
//           ),
//           leading: SizedBox(
//             width: 50,
//             child: Image.asset('assets/ps_logo.png'),
//           ),
//         )