import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static setUserModel(String token) async {
    final SharedPreferences sh = await SharedPreferences.getInstance();
    sh.setString("token", token);
  }

  static Future<String?> getUserModel() async {
    final SharedPreferences sh = await SharedPreferences.getInstance();
    String? userModel = sh.getString("token");
    return userModel;
  }

  static deleteUserModel(jsonDecode) async {
    final SharedPreferences sh = await SharedPreferences.getInstance();
    sh.remove("token");
  }
}
