import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pawpal/utils/constants.dart';

class AuthService {

  Future<bool> register(String email, String password) async {
    final url = Uri.parse('$kBaseUri/auth/register');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'email': email, 'password': password});

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      // Handle errors here
      print('Error: $e');
      return false;
    }
  }

}
