import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/models/test_model.dart';

final testRepository = Provider(
  (ref) => TestRepository(),
);

class TestRepository {
  final _db = FirebaseFirestore.instance;

  Future<List<TestModel>> getTestModels() async {
    final querySnapshot = await _db.collection('test').get();
    return querySnapshot.docs
        .map(
          (e) => TestModel.fromJson(e.data()),
        )
        .toList();
  }

  Future<void> createTestModel(TestModel test) async {
    await _db.collection('test').add(test.toJson());
  }
}
