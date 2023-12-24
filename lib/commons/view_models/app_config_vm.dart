import 'package:challenge/commons/models/app_config_model.dart';
import 'package:challenge/commons/repos/app_config_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppConfigViewModel extends Notifier<AppConfigModel> {
  final AppConfigRepository repository;

  AppConfigViewModel({required this.repository});

  void setDarkMode(bool value) {
    repository.setDarkMode(value);
    state = AppConfigModel(isDarkMode: value);
  }

  @override
  AppConfigModel build() {
    return AppConfigModel(isDarkMode: repository.getIsDarkMode());
  }
}

final appConfigProvider = NotifierProvider<AppConfigViewModel, AppConfigModel>(
  () => throw UnimplementedError(),
);
