part of 'delete_note_bloc.dart';

@freezed
class DeleteNoteState with _$DeleteNoteState {
  const factory DeleteNoteState.initial() = _Initial;
  const factory DeleteNoteState.loading() = _Loading;
  const factory DeleteNoteState.success({required String successMessage}) =
      _Success;
  const factory DeleteNoteState.error({required String errorMessage}) = _Error;
}
