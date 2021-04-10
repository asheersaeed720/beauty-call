import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:beauty_call/utils/web_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<Map> loginUser(xApiKey) async {
    var result;
    log(xApiKey);
    var response = await http.post(
      '${WebAPI.loginURL}',
      headers: {'X-API-KEY': xApiKey},
    );

    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      print(responseJson);

      saveUser(responseJson);

      result = {'status': true, 'message': 'Successful', 'user': responseJson};
    } else if (response.statusCode == 400) {
      result = {
        'status': false,
        'message': json.decode(response.body),
      };
    } else {
      result = {
        'status': false,
        'message': json.decode(response.body),
      };
    }
    return result;
  }

  saveUser(userData) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('userData', jsonEncode(userData));
  }

  getUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var userData = preferences.getString('userData');
    if (userData != null) {
      Map user = json.decode(userData);
      print(user);
      return user;
    }
  }

  logoutUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('userData');
  }
}
