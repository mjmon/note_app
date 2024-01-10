import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:noteapp/database/app_database.dart';
import 'package:noteapp/models/note/note.dart';
import 'package:noteapp/service/i_api_service.dart';

@Injectable(as: IApiService)
class ApiService implements IApiService {
  final AppDatabase _database;

  ApiService({required AppDatabase database}) : _database = database;

  @override
  Stream<List<Note>> getNotes() {
    final query = _database.select(_database.notesTable);
    query.orderBy([
      (u) => OrderingTerm(expression: u.updateDate, mode: OrderingMode.desc),
    ]);

    final stream = query.watch().distinct();

    return stream.map((List<NoteEntry> rows) {
      List<Note> noteList = [
        ...rows.map((NoteEntry row) {
          final note = Note.fromTableEntry(row);
          return note;
        })
      ];
      return noteList;
    });
  }

  @override
  Future<int> saveNote({required Note note}) async {
    final noteId = await _database.into(_database.notesTable).insert(
          NotesTableCompanion.insert(
            title: Value(note.title),
            content: Value(note.content),
            createDate: Value(note.createDate!),
            updateDate: Value(note.updateDate!),
          ),
        );
    debugPrint("noteId: $noteId");
    return noteId;
  }

  @override
  Future<void> updateNote({required Note note}) async {
    await _database.update(_database.notesTable).replace(
          NotesTableCompanion.insert(
            id: Value(note.id!),
            title: Value(note.title),
            content: Value(note.content),
            createDate: Value(note.createDate!),
            updateDate: Value(note.updateDate!),
          ),
        );
  }

  @override
  Future<void> deleteNote({required int noteId}) async {
    await (_database.delete(_database.notesTable)
          ..where((tbl) => tbl.id.equals(noteId)))
        .go();
  }
}
