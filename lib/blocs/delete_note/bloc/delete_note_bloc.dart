import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noteapp/service/i_api_service.dart';

part 'delete_note_event.dart';
part 'delete_note_state.dart';
part 'delete_note_bloc.freezed.dart';

class DeleteNoteBloc extends Bloc<DeleteNoteEvent, DeleteNoteState> {
  final IApiService _apiService;

  DeleteNoteBloc({required IApiService apiService})
      : _apiService = apiService,
        super(const DeleteNoteState.initial()) {
    on<DeleteNoteEvent>((event, emit) async {
      await event.map(deleteNote: (e) => _deleteNote(e, emit));
    });
  }

  Future<void> _deleteNote(_DeleteNote e, Emitter<DeleteNoteState> emit) async {
    emit(const DeleteNoteState.loading());
    try {
      await _apiService.deleteNote(noteId: e.noteId);
      emit(const DeleteNoteState.success(successMessage: "Note deleted!"));
    } catch (error, stackTrace) {
      debugPrint("error in deleting note: $error, $stackTrace");
      emit(const DeleteNoteState.error(errorMessage: "Failed to delete note!"));
    }
  }
}
