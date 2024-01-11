part of 'submit_note_bloc.dart';

@freezed
class SubmitNoteState with _$SubmitNoteState {
  const factory SubmitNoteState.initial() = _Initial;
  const factory SubmitNoteState.loading() = _Loading;
  const factory SubmitNoteState.success({required String successMessage}) =
      _Success;
  const factory SubmitNoteState.error({required String errorMessage}) = _Error;
}
