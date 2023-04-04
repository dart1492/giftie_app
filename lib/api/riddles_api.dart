import 'package:dio/dio.dart';
import 'package:giftie_app/models/riddle.dart';

class RiddleApi {
  final Dio _dio = Dio();

  Future<Riddle> getRiddle() async {
    String path = "https://api.api-ninjas.com/v1/riddles";
    final response = await _dio.get(
      path,
      options: Options(
        headers: {"X-Api-Key": "FwkhuehJ8vZQQXKgrhcnlg==AfRrbSrAn9FxLwbX"},
      ),
    );

    return Riddle.fromMap(response.data[0]);
  }
}
