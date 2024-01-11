part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.setOriginalNote({required Note note}) =
      _SetOriginalNote;
  const factory NoteFormEvent.changeNoteTitle({required String title}) =
      _ChangeNoteTitle;
  const factory NoteFormEvent.changeNoteContent({required String content}) =
      _ChangeNoteContent;
}
