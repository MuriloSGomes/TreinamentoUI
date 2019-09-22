import 'package:http/http.dart' as http;

class ApiService {
  Future<String> post({String url, body}) async {
    var response = await http.post(
      url,
      body: body,
      headers: {"Content-Type": "application/json"},
    );
    return response.body;

  }
<<<<<<< HEAD
=======

>>>>>>> 4bb5efc714e4da19338a72bf620b9e3ba4ac8e70
//  Future<String> post({String url}) async {
//    var response = await http.get(url);
//    return response.body;
//  }
}
