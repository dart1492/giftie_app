import 'package:flutter/material.dart';

class GiftCardOrder extends ChangeNotifier {
  String serviceName;

  int? amount;

  Color? color;

  String imagePath;

  GiftCardOrder({
    this.amount,
    this.color,
    required this.serviceName,
    required this.imagePath,
  });

  void updateColor(Color newColor) {
    color = newColor;
    notifyListeners();
  }

  void updateAmount(int newPrice) {
    amount = newPrice;
    notifyListeners();
  }
}
