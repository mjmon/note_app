part of 'note_list_bloc.dart';

@freezed
class NoteListEvent with _$NoteListEvent {
  const factory NoteListEvent.getNotes() = _GetNotes;
  const factory NoteListEvent.setNotes({required List<Note> notes}) = _SetNotes;
}
