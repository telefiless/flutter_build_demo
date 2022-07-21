import 'package:dio/dio.dart';

// MyHomePage
class Netinfo {
  static const String _baseUrl =
      'https://pvp.qq.com/web201605/js/herolist.json';

  static getInfo() async {
    try {
      var response = await Dio().get(_baseUrl);
      if (response.statusCode == 200) {
        return response;
        // print(response);
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
