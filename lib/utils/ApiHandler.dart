import 'package:dio/dio.dart';

class Request{


  void getHttp(url) async {
    try {
      // Response response = await Dio().get("http://www.google.com");
      Response response = await Dio().get(url);
      print(response);
    } catch (e) {
      print(e);
    }
  }
}