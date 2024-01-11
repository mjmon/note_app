import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noteapp/models/note/note.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  NoteFormBloc() : super(NoteFormState.initial()) {
    on<NoteFormEvent>((event, emit) {
      event.map(
        setOriginalNote: (e) {
          emit(state.copyWith(
              originalNote: e.note,
              noteTitle: e.note.title,
              noteContent: e.note.content));
        },
        changeNoteTitle: (e) {
          emit(state.copyWith(noteTitle: e.title));
        },
        changeNoteContent: (e) {
          emit(state.copyWith(noteContent: e.content));
        },
      );
    });
  }
}
