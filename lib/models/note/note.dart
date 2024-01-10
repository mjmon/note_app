import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noteapp/database/app_database.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const factory Note(
      {required int? id,
      required String title,
      required String content,
      required DateTime? createDate,
      required DateTime? updateDate}) = _Note;

  factory Note.initial() => const Note(
      id: null, title: '', content: '', createDate: null, updateDate: null);

  // convert a NoteEntry to Note object
  factory Note.fromTableEntry(NoteEntry noteEntry) {
    return Note(
      id: noteEntry.id,
      title: noteEntry.title,
      content: noteEntry.content,
      createDate: noteEntry.createDate,
      updateDate: noteEntry.updateDate,
    );
  }
}
