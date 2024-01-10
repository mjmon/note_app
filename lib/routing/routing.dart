import 'package:go_router/go_router.dart';
import 'package:noteapp/ui/note_list/note_list_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const NoteListPage(),
    ),
  ],
);
