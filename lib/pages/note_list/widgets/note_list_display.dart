import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:noteapp/blocs/delete_note/bloc/delete_note_bloc.dart';
import 'package:noteapp/models/note/note.dart';
import 'package:noteapp/pages/create_edit_note/create_edit_note_page.dart';
import 'package:noteapp/pages/note_list/widgets/note_item.dart';

class NoteListDisplay extends StatelessWidget {
  const NoteListDisplay({super.key, required this.notes});

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    if (notes.isNotEmpty) {
      return ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final note = notes.elementAt(index);
            return NoteItem(
              note: note,
              onDelete: () {
                //handle delete
                context
                    .read<DeleteNoteBloc>()
                    .add(DeleteNoteEvent.deleteNote(noteId: note.id!));
              },
            );
          });
    } else {
      return const Center(child: Text("No Notes found"));
    }
  }
}
