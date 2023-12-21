import 'package:shared_preferences/shared_preferences.dart';

class AppConfigRepository {
  static const _isDarkMode = "isDarkMode";

  final SharedPreferences _preferences;

  AppConfigRepository(this._preferences);

  void setDarkMode(bool value) async {
    await _preferences.setBool(_isDarkMode, value);
  }

  bool getIsDarkMode() => _preferences.getBool(_isDarkMode) ?? true;
}
