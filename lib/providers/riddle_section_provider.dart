import 'package:flutter/material.dart';
import 'package:giftie_app/api/riddles_api.dart';
import 'package:giftie_app/models/riddle.dart';

class RiddleSectionProvider extends ChangeNotifier {
  final RiddleApi _api = RiddleApi();
  bool isLoading = false;
  late Riddle currentRiddle;

  Future<void> getNewRiddle() async {
    isLoading = true;
    notifyListeners();

    currentRiddle = await _api.getRiddle();
    isLoading = false;
    notifyListeners();
  }
}
