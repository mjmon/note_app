import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/blocs/note_list/note_list_bloc.dart';
import 'package:noteapp/database/app_database.dart';
import 'package:noteapp/injection.dart';
import 'package:noteapp/ui/note_list/widgets/note_list_display.dart';

class NoteListPage extends StatefulWidget {
  const NoteListPage({super.key});

  @override
  State<NoteListPage> createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  @override
  void initState() {
    super.initState();
    context.read<NoteListBloc>().add(const NoteListEvent.getNotes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Notes"),
          actions: [
            // for viewing content of the database tables
            if (kDebugMode) ...[
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            DriftDbViewer(getIt<AppDatabase>())));
                  },
                  icon: const Icon(Icons.remove_red_eye))
            ]
          ],
        ),
        body: BlocConsumer<NoteListBloc, NoteListState>(
          listener: (context, noteListState) {},
          builder: (context, noteListState) {
            return noteListState.map(
                initial: (_) => const SizedBox(),
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loaded: (e) => NoteListDisplay(
                      notes: e.notes,
                    ),
                error: (_) => const Center(
                      child: Text("Error Occured"),
                    ));
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Create Note',
          child: const Icon(Icons.add),
        ));
  }
}
