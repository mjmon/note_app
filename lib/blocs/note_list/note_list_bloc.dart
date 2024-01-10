import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noteapp/models/note/note.dart';
import 'package:noteapp/service/i_api_service.dart';

part 'note_list_event.dart';
part 'note_list_state.dart';
part 'note_list_bloc.freezed.dart';

class NoteListBloc extends Bloc<NoteListEvent, NoteListState> {
  final IApiService _apiService;
  StreamSubscription<List<Note>>? _noteStreamSubscription;

  NoteListBloc({required IApiService apiService})
      : _apiService = apiService,
        super(const NoteListState.initial()) {
    on<NoteListEvent>((event, emit) async {
      await event.map(
          getNotes: (e) => _getNotes(emit),
          setNotes: (e) {
            emit(NoteListState.loaded(notes: e.notes));
          });
    });
  }

  Future<void> _getNotes(Emitter<NoteListState> emit) async {
    emit(const NoteListState.loading());
    try {
      _noteStreamSubscription = _apiService.getNotes().listen((data) {
        add(NoteListEvent.setNotes(notes: data));
      });
    } catch (error, stackTrace) {
      debugPrint("_getNotes error: $error, $stackTrace");
      emit(const NoteListState.error());
    }
  }

  @override
  Future<void> close() {
    _noteStreamSubscription?.cancel();
    return super.close();
  }
}
