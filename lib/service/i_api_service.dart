import 'package:noteapp/models/note/note.dart';

abstract class IApiService {
  Future<int> saveNote({required Note note});
  Future<void> updateNote({required Note note});
  Future<void> deleteNote({required int noteId});
  Stream<List<Note>> getNotes();
}
