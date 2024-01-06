import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/note/models/note_model.dart';

final noteRepository = Provider(
  (ref) => NoteRepository(),
);

class NoteRepository {
  static const _noteCollectionPath = 'notes';

  final _db = FirebaseFirestore.instance;

  Future<void> createNote(NoteModel note) async {
    await _db.collection(_noteCollectionPath).add(note.toJson());
  }

  Future<List<NoteModel>> readNotes(String uid) async {
    final querySnapshot = await _db
        .collection(_noteCollectionPath)
        .where('uid', isEqualTo: uid)
        .orderBy(
          'createdMilliSecondsSinceEpoch',
          descending: true,
        )
        .get();
    return querySnapshot.docs.map((e) => NoteModel.fromJson(e.data())).toList();
  }

  Future<void> deleteNote(NoteModel note) async {
    final querySnapshot = await _db
        .collection(_noteCollectionPath)
        .where('uid', isEqualTo: note.uid)
        .where('createdMilliSecondsSinceEpoch',
            isEqualTo: note.createdMilliSecondsSinceEpoch)
        .get();

    final docId = querySnapshot.docs.first.id;
    await _db.collection(_noteCollectionPath).doc(docId).delete();
  }
}
