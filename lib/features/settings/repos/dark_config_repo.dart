import 'package:shared_preferences/shared_preferences.dart';

class DarkConfigRepository {
  static const String _isDark = 'isDark';

  final SharedPreferences _preferences;

  DarkConfigRepository(
    this._preferences,
  );

  bool isDark() {
    return _preferences.getBool(_isDark) ?? false;
  }

  Future<void> setDark(bool value) async {
    await _preferences.setBool(_isDark, value);
  }
}
