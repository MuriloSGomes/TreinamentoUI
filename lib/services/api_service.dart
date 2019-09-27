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
}
