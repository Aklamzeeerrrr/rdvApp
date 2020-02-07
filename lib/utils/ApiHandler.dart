import 'package:dio/dio.dart';

class ApiHandler{


  static void getHttp(url) async {
    try {
      // Response response = await Dio().get("http://www.google.com");
      Response response = await Dio().get(url);
      print(response);
    } catch (e) {
      print(e);
    }
  }


  /**
   *
   * comment l'utiliser dans un autre fichier
   *
   * premierement tu importe la class
   */

/*
    var api = ApiHandler.getHttp("https://jsonplaceholder.typicode.com/todos");

    api.then(resp =>{
      print(resp.data);
    });
    */
}