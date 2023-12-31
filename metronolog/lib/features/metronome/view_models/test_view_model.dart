import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/metronome/repositories/test_repository.dart';
import 'package:metronolog/models/test_model.dart';

final testViewModel = AsyncNotifierProvider<TestViewModel, List<TestModel>>(
  () => TestViewModel(),
);

class TestViewModel extends AsyncNotifier<List<TestModel>> {
  late final TestRepository _repository;

  @override
  FutureOr<List<TestModel>> build() async {
    _repository = ref.read(testRepository);
    return await _repository.getTestModels();
  }
}
