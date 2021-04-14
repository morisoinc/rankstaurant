import 'package:shared_preferences/shared_preferences.dart';

import 'keys.dart';

enum Role { admin, owner, regular }

class SettingsHelper {
  static void setUserRole(String role) {
    _setString(SettingsKeys.userRole, role);
  }

  static Future<Role> userRole() async {
    switch (await _getString(SettingsKeys.userRole)) {
      case 'admin':
        return Role.admin;
      case 'owner':
        return Role.owner;
      case 'regular':
        return Role.regular;
    }
    return Role.regular;
  }

  static void _setString(String key, String value) {
    SharedPreferences.getInstance()
        .then((prefs) => prefs.setString(key, value));
  }

  static Future<String?> _getString(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}
