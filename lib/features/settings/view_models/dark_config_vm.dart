import 'package:flutter/material.dart';
import 'package:tiktok/features/settings/models/dark_config_model.dart';
import 'package:tiktok/features/settings/repos/dark_config_repo.dart';

class DarkConfigViewModel extends ChangeNotifier {
  final DarkConfigRepository _repository;

  late final DarkConfigModel _model = DarkConfigModel(
    isDark: _repository.isDark(),
  );

  DarkConfigViewModel(
    this._repository,
  );

  void setDark(bool value) {
    _repository.setDark(value);
    _model.isDark = value;
    notifyListeners();
  }

  bool get isDark => _model.isDark;

  static isDarkMode(BuildContext context) {}
}
