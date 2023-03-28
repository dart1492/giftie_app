import 'package:flutter/material.dart';
import 'package:giftie_app/models/gift_card_order.dart';

class ShoppingCart extends ChangeNotifier {
  List<GiftCardOrder> orders = [];

  void addOrder(GiftCardOrder newOrder) {
    orders.add(newOrder);
  }

  void deleteOrder(int index) {
    orders.removeAt(index);
    notifyListeners();
  }
}
