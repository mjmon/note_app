part of 'note_list_bloc.dart';

@freezed
class NoteListState with _$NoteListState {
  const factory NoteListState.initial() = _Initial;
  const factory NoteListState.loading() = _Loading;
  const factory NoteListState.loaded({required List<Note> notes}) = _Loaded;
  const factory NoteListState.error() = _Error;
}
