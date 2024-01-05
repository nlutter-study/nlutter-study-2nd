import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/note/models/note_model.dart';

final noteRepository = Provider(
  (ref) => NoteRepository(),
);

class NoteRepository {
  final _db = FirebaseFirestore.instance;

  Future<void> createNote(NoteModel note) async {
    await _db.collection('notes').add(note.toJson());
  }

  Future<List<NoteModel>> readNotes(String uid) async {
    final querySnapshot = await _db
        .collection('notes')
        .where('uid', isEqualTo: uid)
        .orderBy(
          'createdMilliSecondsSinceEpoch',
          descending: true,
        )
        .get();
    return querySnapshot.docs.map((e) => NoteModel.fromJson(e.data())).toList();
  }
}
