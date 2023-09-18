import 'package:flutter/material.dart';

  abstract class PrefsRepository{
  String? get token;
  Future<bool> setToken(String token);
  Future<bool> setTheme(ThemeMode themeMode);
  ThemeMode get getTheme;
  Future<bool> clearUser();
  bool get registeredUser;
  // Future<bool> setUser(User user);
}