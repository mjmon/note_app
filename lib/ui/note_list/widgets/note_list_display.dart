import 'package:flutter/material.dart';
import 'package:noteapp/models/note/note.dart';

class NoteListDisplay extends StatelessWidget {
  const NoteListDisplay({super.key, required this.notes});

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    if (notes.isNotEmpty) {
      return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final note = notes.elementAt(index);
            return ListTile(
              title: Text(
                note.title,
              ),
              subtitle: Text(
                note.content,
              ),
            );
          });
    } else {
      return const Center(child: Text("No Notes found"));
    }
  }
}
