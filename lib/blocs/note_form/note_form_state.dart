part of 'note_form_bloc.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required Note originalNote,
    required String noteTitle,
    required String noteContent,
  }) = _NoteFormState;

  factory NoteFormState.initial() =>
      NoteFormState(originalNote: Note.empty(), noteTitle: '', noteContent: '');
}
