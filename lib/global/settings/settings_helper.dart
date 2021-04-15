import 'package:hive/hive.dart';

import 'keys.dart';

enum Role { admin, owner, regular }

class SettingsHelper {
  static void setUserRole(String role) {
    _setString(SettingsKeys.userRole, role);
  }

  static Role userRole() {
    switch (_getString(SettingsKeys.userRole)) {
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
    Hive.box(settingsHiveBox).put(key, value);
  }

  static String? _getString(String key) {
    return Hive.box(settingsHiveBox).get(key) as String;
  }
}
