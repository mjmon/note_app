import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/blocs/delete_note/bloc/delete_note_bloc.dart';
import 'package:noteapp/models/note/note.dart';
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
      return Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: EmptyWidget(
            image: null,
            packageImage: PackageImage.Image_3,
            title: 'No Notes Found!',
            subTitle: 'Please tap button below to create',
            titleTextStyle: const TextStyle(
              fontSize: 16,
              color: Color(0xff9da9c7),
              fontWeight: FontWeight.w500,
            ),
            subtitleTextStyle: const TextStyle(
              fontSize: 12,
              color: Color(0xffabb8d6),
            ),
          ),
        ),
      );
      return const Center(child: Text("No Notes found"));
    }
  }
}
