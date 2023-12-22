import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok/features/settings/models/dark_config_model.dart';
import 'package:tiktok/features/settings/repos/dark_config_repo.dart';

class DarkConfigViewModel extends Notifier<DarkConfigModel> {
  final DarkConfigRepository _repository;

  DarkConfigViewModel(
    this._repository,
  );

  void setDark(bool value) {
    _repository.setDark(value);
    state = DarkConfigModel(isDark: value);
  }

  @override
  DarkConfigModel build() {
    return DarkConfigModel(
      isDark: _repository.isDark(),
    );
  }
}

final darkConfigViewModelProvider =
    NotifierProvider<DarkConfigViewModel, DarkConfigModel>(
  () => throw UnimplementedError(),
);
