import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Api{

  //get api
  static Future<http.Response> getApi({required String url})async{
    SharedPreferences _pref = await SharedPreferences.getInstance();
    var token = _pref.getString("token");
    var response = await http.get(Uri.parse(url),
      headers: {
        "Authorization" : "token $token"
       }
    );
    return response;
  }


  //post api
  static Future<http.Response> postApi({required String url, required Map<String, dynamic> body})async{
    SharedPreferences _pref = await SharedPreferences.getInstance();
    var token = _pref.getString("token");
    var response = await http.post(Uri.parse(url),
        headers: {
          "Authorization" : "token $token"
        },
      body: body
    );
    return response;
  }


  //delete api
//post api
  static Future<http.Response> deleteApi({required String url, required Map<String, dynamic> body})async{
    SharedPreferences _pref = await SharedPreferences.getInstance();
    var token = _pref.getString("token");
    var response = await http.delete(Uri.parse(url),
        headers: {
          "Authorization" : "token $token"
        },
        body: body
    );
    return response;
  }

  //post api
  static Future<http.Response> putApi({required String url, required Map<String, dynamic> body})async{
    SharedPreferences _pref = await SharedPreferences.getInstance();
    var token = _pref.getString("token");
    var response = await http.put(Uri.parse(url),
        headers: {
          "Authorization" : "token $token"
        },
        body: body
    );
    return response;
  }

}