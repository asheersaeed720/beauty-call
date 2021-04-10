import 'dart:async';
import 'package:beauty_call/services/auth_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  AuthService _authService = AuthService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool loadVal) {
    _isLoading = loadVal;
    notifyListeners();
  }

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;
  set isLoggedIn(bool isUserExist) {
    _isLoggedIn = isUserExist;
    notifyListeners();
  }

  Map _user = {};
  Map get user => _user;
  setUser() async {
    _user = await _authService.getUser();
    isLoggedIn = _user == null ? false : true;
    notifyListeners();
  }

  String _xApiKey = '';
  String get xApiKey => _xApiKey;

  getXApiKey() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _xApiKey = preferences.getString('xApiKey');
    print('xApiKey: $_xApiKey');
    notifyListeners();
    return _xApiKey;
  }

  checkLoginStatus() async {
    return _user = await _authService.getUser();
  }

  Future<Map> login(xApiKey) async {
    return await _authService.loginUser(xApiKey);
  }

  logOut() async {
    return await _authService.logoutUser();
  }
}

final authProvider = ChangeNotifierProvider((ref) => AuthProvider());
