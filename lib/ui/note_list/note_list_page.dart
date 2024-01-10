import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/database/app_database.dart';
import 'package:noteapp/injection.dart';

class NoteListPage extends StatefulWidget {
  const NoteListPage({super.key});

  @override
  State<NoteListPage> createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Create Note',
          child: const Icon(Icons.add),
        ));
  }
}
