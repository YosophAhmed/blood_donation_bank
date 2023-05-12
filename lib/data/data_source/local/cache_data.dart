import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static Future<bool> saveValue({
    required String key,
    required dynamic value,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    if (value is bool) {
      return await prefs.setBool(
        key,
        value,
      );
    } else if (value is int) {
      return await prefs.setInt(
        key,
        value,
      );
    } else if (value is double) {
      return await prefs.setDouble(
        key,
        value,
      );
    } else if (value is List<String>) {
      return await prefs.setStringList(
        key,
        value,
      );
    } else {
      return await prefs.setString(
        key,
        value,
      );
    }
  }

  static dynamic getValue({
    required String key,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(key)) {
      return prefs.get(key);
    }
  }

  static Future<bool> removeValue({
    required String key,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(key)) {
      return prefs.remove(key);
    } else {
      return false;
    }
  }

  static Future<bool> clearData() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }
}