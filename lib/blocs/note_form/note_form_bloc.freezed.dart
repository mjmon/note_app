// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) setOriginalNote,
    required TResult Function(String title) changeNoteTitle,
    required TResult Function(String content) changeNoteContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? setOriginalNote,
    TResult? Function(String title)? changeNoteTitle,
    TResult? Function(String content)? changeNoteContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? setOriginalNote,
    TResult Function(String title)? changeNoteTitle,
    TResult Function(String content)? changeNoteContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetOriginalNote value) setOriginalNote,
    required TResult Function(_ChangeNoteTitle value) changeNoteTitle,
    required TResult Function(_ChangeNoteContent value) changeNoteContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetOriginalNote value)? setOriginalNote,
    TResult? Function(_ChangeNoteTitle value)? changeNoteTitle,
    TResult? Function(_ChangeNoteContent value)? changeNoteContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetOriginalNote value)? setOriginalNote,
    TResult Function(_ChangeNoteTitle value)? changeNoteTitle,
    TResult Function(_ChangeNoteContent value)? changeNoteContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res, NoteFormEvent>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res, $Val extends NoteFormEvent>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetOriginalNoteImplCopyWith<$Res> {
  factory _$$SetOriginalNoteImplCopyWith(_$SetOriginalNoteImpl value,
          $Res Function(_$SetOriginalNoteImpl) then) =
      __$$SetOriginalNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$SetOriginalNoteImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$SetOriginalNoteImpl>
    implements _$$SetOriginalNoteImplCopyWith<$Res> {
  __$$SetOriginalNoteImplCopyWithImpl(
      _$SetOriginalNoteImpl _value, $Res Function(_$SetOriginalNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$SetOriginalNoteImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$SetOriginalNoteImpl implements _SetOriginalNote {
  const _$SetOriginalNoteImpl({required this.note});

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteFormEvent.setOriginalNote(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetOriginalNoteImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetOriginalNoteImplCopyWith<_$SetOriginalNoteImpl> get copyWith =>
      __$$SetOriginalNoteImplCopyWithImpl<_$SetOriginalNoteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) setOriginalNote,
    required TResult Function(String title) changeNoteTitle,
    required TResult Function(String content) changeNoteContent,
  }) {
    return setOriginalNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? setOriginalNote,
    TResult? Function(String title)? changeNoteTitle,
    TResult? Function(String content)? changeNoteContent,
  }) {
    return setOriginalNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? setOriginalNote,
    TResult Function(String title)? changeNoteTitle,
    TResult Function(String content)? changeNoteContent,
    required TResult orElse(),
  }) {
    if (setOriginalNote != null) {
      return setOriginalNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetOriginalNote value) setOriginalNote,
    required TResult Function(_ChangeNoteTitle value) changeNoteTitle,
    required TResult Function(_ChangeNoteContent value) changeNoteContent,
  }) {
    return setOriginalNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetOriginalNote value)? setOriginalNote,
    TResult? Function(_ChangeNoteTitle value)? changeNoteTitle,
    TResult? Function(_ChangeNoteContent value)? changeNoteContent,
  }) {
    return setOriginalNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetOriginalNote value)? setOriginalNote,
    TResult Function(_ChangeNoteTitle value)? changeNoteTitle,
    TResult Function(_ChangeNoteContent value)? changeNoteContent,
    required TResult orElse(),
  }) {
    if (setOriginalNote != null) {
      return setOriginalNote(this);
    }
    return orElse();
  }
}

abstract class _SetOriginalNote implements NoteFormEvent {
  const factory _SetOriginalNote({required final Note note}) =
      _$SetOriginalNoteImpl;

  Note get note;
  @JsonKey(ignore: true)
  _$$SetOriginalNoteImplCopyWith<_$SetOriginalNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNoteTitleImplCopyWith<$Res> {
  factory _$$ChangeNoteTitleImplCopyWith(_$ChangeNoteTitleImpl value,
          $Res Function(_$ChangeNoteTitleImpl) then) =
      __$$ChangeNoteTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$ChangeNoteTitleImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$ChangeNoteTitleImpl>
    implements _$$ChangeNoteTitleImplCopyWith<$Res> {
  __$$ChangeNoteTitleImplCopyWithImpl(
      _$ChangeNoteTitleImpl _value, $Res Function(_$ChangeNoteTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$ChangeNoteTitleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeNoteTitleImpl implements _ChangeNoteTitle {
  const _$ChangeNoteTitleImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'NoteFormEvent.changeNoteTitle(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNoteTitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNoteTitleImplCopyWith<_$ChangeNoteTitleImpl> get copyWith =>
      __$$ChangeNoteTitleImplCopyWithImpl<_$ChangeNoteTitleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) setOriginalNote,
    required TResult Function(String title) changeNoteTitle,
    required TResult Function(String content) changeNoteContent,
  }) {
    return changeNoteTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? setOriginalNote,
    TResult? Function(String title)? changeNoteTitle,
    TResult? Function(String content)? changeNoteContent,
  }) {
    return changeNoteTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? setOriginalNote,
    TResult Function(String title)? changeNoteTitle,
    TResult Function(String content)? changeNoteContent,
    required TResult orElse(),
  }) {
    if (changeNoteTitle != null) {
      return changeNoteTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetOriginalNote value) setOriginalNote,
    required TResult Function(_ChangeNoteTitle value) changeNoteTitle,
    required TResult Function(_ChangeNoteContent value) changeNoteContent,
  }) {
    return changeNoteTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetOriginalNote value)? setOriginalNote,
    TResult? Function(_ChangeNoteTitle value)? changeNoteTitle,
    TResult? Function(_ChangeNoteContent value)? changeNoteContent,
  }) {
    return changeNoteTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetOriginalNote value)? setOriginalNote,
    TResult Function(_ChangeNoteTitle value)? changeNoteTitle,
    TResult Function(_ChangeNoteContent value)? changeNoteContent,
    required TResult orElse(),
  }) {
    if (changeNoteTitle != null) {
      return changeNoteTitle(this);
    }
    return orElse();
  }
}

abstract class _ChangeNoteTitle implements NoteFormEvent {
  const factory _ChangeNoteTitle({required final String title}) =
      _$ChangeNoteTitleImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$ChangeNoteTitleImplCopyWith<_$ChangeNoteTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNoteContentImplCopyWith<$Res> {
  factory _$$ChangeNoteContentImplCopyWith(_$ChangeNoteContentImpl value,
          $Res Function(_$ChangeNoteContentImpl) then) =
      __$$ChangeNoteContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$ChangeNoteContentImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$ChangeNoteContentImpl>
    implements _$$ChangeNoteContentImplCopyWith<$Res> {
  __$$ChangeNoteContentImplCopyWithImpl(_$ChangeNoteContentImpl _value,
      $Res Function(_$ChangeNoteContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$ChangeNoteContentImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeNoteContentImpl implements _ChangeNoteContent {
  const _$ChangeNoteContentImpl({required this.content});

  @override
  final String content;

  @override
  String toString() {
    return 'NoteFormEvent.changeNoteContent(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNoteContentImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNoteContentImplCopyWith<_$ChangeNoteContentImpl> get copyWith =>
      __$$ChangeNoteContentImplCopyWithImpl<_$ChangeNoteContentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) setOriginalNote,
    required TResult Function(String title) changeNoteTitle,
    required TResult Function(String content) changeNoteContent,
  }) {
    return changeNoteContent(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? setOriginalNote,
    TResult? Function(String title)? changeNoteTitle,
    TResult? Function(String content)? changeNoteContent,
  }) {
    return changeNoteContent?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? setOriginalNote,
    TResult Function(String title)? changeNoteTitle,
    TResult Function(String content)? changeNoteContent,
    required TResult orElse(),
  }) {
    if (changeNoteContent != null) {
      return changeNoteContent(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetOriginalNote value) setOriginalNote,
    required TResult Function(_ChangeNoteTitle value) changeNoteTitle,
    required TResult Function(_ChangeNoteContent value) changeNoteContent,
  }) {
    return changeNoteContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetOriginalNote value)? setOriginalNote,
    TResult? Function(_ChangeNoteTitle value)? changeNoteTitle,
    TResult? Function(_ChangeNoteContent value)? changeNoteContent,
  }) {
    return changeNoteContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetOriginalNote value)? setOriginalNote,
    TResult Function(_ChangeNoteTitle value)? changeNoteTitle,
    TResult Function(_ChangeNoteContent value)? changeNoteContent,
    required TResult orElse(),
  }) {
    if (changeNoteContent != null) {
      return changeNoteContent(this);
    }
    return orElse();
  }
}

abstract class _ChangeNoteContent implements NoteFormEvent {
  const factory _ChangeNoteContent({required final String content}) =
      _$ChangeNoteContentImpl;

  String get content;
  @JsonKey(ignore: true)
  _$$ChangeNoteContentImplCopyWith<_$ChangeNoteContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteFormState {
  Note get originalNote => throw _privateConstructorUsedError;
  String get noteTitle => throw _privateConstructorUsedError;
  String get noteContent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res, NoteFormState>;
  @useResult
  $Res call({Note originalNote, String noteTitle, String noteContent});

  $NoteCopyWith<$Res> get originalNote;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res, $Val extends NoteFormState>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalNote = null,
    Object? noteTitle = null,
    Object? noteContent = null,
  }) {
    return _then(_value.copyWith(
      originalNote: null == originalNote
          ? _value.originalNote
          : originalNote // ignore: cast_nullable_to_non_nullable
              as Note,
      noteTitle: null == noteTitle
          ? _value.noteTitle
          : noteTitle // ignore: cast_nullable_to_non_nullable
              as String,
      noteContent: null == noteContent
          ? _value.noteContent
          : noteContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get originalNote {
    return $NoteCopyWith<$Res>(_value.originalNote, (value) {
      return _then(_value.copyWith(originalNote: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteFormStateImplCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$NoteFormStateImplCopyWith(
          _$NoteFormStateImpl value, $Res Function(_$NoteFormStateImpl) then) =
      __$$NoteFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note originalNote, String noteTitle, String noteContent});

  @override
  $NoteCopyWith<$Res> get originalNote;
}

/// @nodoc
class __$$NoteFormStateImplCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res, _$NoteFormStateImpl>
    implements _$$NoteFormStateImplCopyWith<$Res> {
  __$$NoteFormStateImplCopyWithImpl(
      _$NoteFormStateImpl _value, $Res Function(_$NoteFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalNote = null,
    Object? noteTitle = null,
    Object? noteContent = null,
  }) {
    return _then(_$NoteFormStateImpl(
      originalNote: null == originalNote
          ? _value.originalNote
          : originalNote // ignore: cast_nullable_to_non_nullable
              as Note,
      noteTitle: null == noteTitle
          ? _value.noteTitle
          : noteTitle // ignore: cast_nullable_to_non_nullable
              as String,
      noteContent: null == noteContent
          ? _value.noteContent
          : noteContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteFormStateImpl implements _NoteFormState {
  const _$NoteFormStateImpl(
      {required this.originalNote,
      required this.noteTitle,
      required this.noteContent});

  @override
  final Note originalNote;
  @override
  final String noteTitle;
  @override
  final String noteContent;

  @override
  String toString() {
    return 'NoteFormState(originalNote: $originalNote, noteTitle: $noteTitle, noteContent: $noteContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteFormStateImpl &&
            (identical(other.originalNote, originalNote) ||
                other.originalNote == originalNote) &&
            (identical(other.noteTitle, noteTitle) ||
                other.noteTitle == noteTitle) &&
            (identical(other.noteContent, noteContent) ||
                other.noteContent == noteContent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, originalNote, noteTitle, noteContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteFormStateImplCopyWith<_$NoteFormStateImpl> get copyWith =>
      __$$NoteFormStateImplCopyWithImpl<_$NoteFormStateImpl>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required final Note originalNote,
      required final String noteTitle,
      required final String noteContent}) = _$NoteFormStateImpl;

  @override
  Note get originalNote;
  @override
  String get noteTitle;
  @override
  String get noteContent;
  @override
  @JsonKey(ignore: true)
  _$$NoteFormStateImplCopyWith<_$NoteFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
