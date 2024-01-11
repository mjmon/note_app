import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noteapp/blocs/note_form/note_form_bloc.dart';
import 'package:noteapp/models/note/note.dart';
import 'package:noteapp/service/i_api_service.dart';

part 'submit_note_event.dart';
part 'submit_note_state.dart';
part 'submit_note_bloc.freezed.dart';

class SubmitNoteBloc extends Bloc<SubmitNoteEvent, SubmitNoteState> {
  final NoteFormBloc _noteFormBloc;
  final IApiService _apiService;

  SubmitNoteBloc(
      {required NoteFormBloc noteFormBloc, required IApiService apiService})
      : _noteFormBloc = noteFormBloc,
        _apiService = apiService,
        super(const SubmitNoteState.initial()) {
    on<SubmitNoteEvent>((event, emit) async {
      await event.map(submitForm: (e) => _submitFormHandler(emit));
    });
  }

  Future<void> _submitFormHandler(Emitter<SubmitNoteState> emit) async {
    emit(const SubmitNoteState.loading());
    final isNewNote = _noteFormBloc.state.originalNote == Note.empty();
    try {
      if (isNewNote) {
        await _apiService.saveNote(
            note: Note(
                id: null,
                title: _noteFormBloc.state.noteTitle,
                content: _noteFormBloc.state.noteContent,
                createDate: DateTime.now(),
                updateDate: DateTime.now()));
      } else {
        // update the updateDate timestampt
        await _apiService.updateNote(
            note: Note(
                id: _noteFormBloc.state.originalNote.id,
                title: _noteFormBloc.state.noteTitle,
                content: _noteFormBloc.state.noteContent,
                createDate: _noteFormBloc.state.originalNote.createDate,
                updateDate: DateTime.now()));
      }

      emit(SubmitNoteState.success(
          successMessage: isNewNote == true
              ? "Added Note Successfully!"
              : "Updated Note Successfully!"));
    } catch (error, stackTrace) {
      debugPrint("error submit form: $error, $stackTrace");
      emit(SubmitNoteState.error(
          errorMessage: isNewNote == true
              ? "Failed to create note!"
              : "Failed to update note!"));
    }
  }
}
