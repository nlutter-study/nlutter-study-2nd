import 'package:challenge/commons/models/app_config_model.dart';
import 'package:challenge/commons/repos/app_config_repo.dart';
import 'package:flutter/material.dart';

class AppConfigViewModel extends ChangeNotifier {
  final AppConfigRepository repository;
  late final AppConfigModel _model = AppConfigModel(
    isDarkMode: repository.getIsDarkMode(),
  );

  AppConfigViewModel({required this.repository});

  bool getIsDarkMode() => _model.isDarkMode;

  void setDarkMode(bool value) {
    repository.setDarkMode(value);
    _model.isDarkMode = value;
    notifyListeners();
  }
}
