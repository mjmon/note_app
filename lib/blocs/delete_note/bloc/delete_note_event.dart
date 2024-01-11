part of 'delete_note_bloc.dart';

@freezed
class DeleteNoteEvent with _$DeleteNoteEvent {
  const factory DeleteNoteEvent.deleteNote({required int noteId}) = _DeleteNote;
}
