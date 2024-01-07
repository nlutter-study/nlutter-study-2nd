import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/metronome/models/timer_model.dart';

final timerRepository = Provider(
  (ref) => TimerRepository(),
);

class TimerRepository {
  static const _timerCollectionPath = "timers";

  final _db = FirebaseFirestore.instance;

  Future<void> upsertTimer(TimerModel timer) async {
    final querySnapshot = await _db
        .collection(_timerCollectionPath)
        .where("uid", isEqualTo: timer.uid)
        .where("createdDate", isEqualTo: timer.createdDate)
        .get();

    if (querySnapshot.docs.isEmpty) {
      await _createTimer(timer);
      return;
    }

    final firstDocId = querySnapshot.docs.first.id;
    await _updateTimer(firstDocId, timer);
  }

  Future<void> _createTimer(TimerModel timer) async {
    await _db.collection(_timerCollectionPath).add(timer.toJson());
  }

  Future<void> _updateTimer(String docId, TimerModel timer) async {
    await _db
        .collection(_timerCollectionPath)
        .doc(docId)
        .update(timer.toJson());
  }

  Future<List<TimerModel>> getTimers(String uid) async {
    final querySnapshot = await _db
        .collection(_timerCollectionPath)
        .where("uid", isEqualTo: uid)
        .get();

    return querySnapshot.docs
        .map((e) => TimerModel.fromJson(e.data()))
        .toList();
  }

  Future<TimerModel?> getTimer(String uid, String createdDate) async {
    final querySnapshot = await _db
        .collection(_timerCollectionPath)
        .where("uid", isEqualTo: uid)
        .where("createdDate", isEqualTo: createdDate)
        .get();

    return querySnapshot.docs
        .map((e) => TimerModel.fromJson(e.data()))
        .firstOrNull;
  }
}
