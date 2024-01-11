import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:noteapp/blocs/delete_note/bloc/delete_note_bloc.dart';
import 'package:noteapp/blocs/note_form/note_form_bloc.dart';
import 'package:noteapp/blocs/submit_note/submit_note_bloc.dart';
import 'package:noteapp/injection.dart';
import 'package:noteapp/models/note/note.dart';
import 'package:noteapp/pages/create_edit_note/create_edit_note_page.dart';
import 'package:noteapp/pages/note_list/note_list_page.dart';
import 'package:noteapp/service/i_api_service.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: NoteListPage.path,
      builder: (context, state) => MultiBlocProvider(providers: [
        BlocProvider(
            create: (context) =>
                DeleteNoteBloc(apiService: getIt<IApiService>())),
      ], child: const NoteListPage()),
    ),
    GoRoute(
      path: CreateEditNotePage.path,
      builder: (context, state) {
        // parse the passed note object
        final note = state.extra as Note;
        // we are putting the blocprovider here to automatically dispose the forms
        return MultiBlocProvider(providers: [
          BlocProvider(create: (context) => NoteFormBloc()),
          BlocProvider(
              create: (context) => SubmitNoteBloc(
                  noteFormBloc: context.read<NoteFormBloc>(),
                  apiService: getIt<IApiService>())),
        ], child: CreateEditNotePage(note: note));
      },
    ),
  ],
);
