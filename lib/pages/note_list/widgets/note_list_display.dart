import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noteapp/models/note/note.dart';
import 'package:noteapp/pages/create_edit_note/create_edit_note_page.dart';
import 'package:timeago/timeago.dart' as timeago;

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
            return Card(
              child: ListTile(
                onTap: () {
                  GoRouter.of(context)
                      .push(CreateEditNotePage.path, extra: note);
                },
                title: Text(
                  note.title,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(note.content),
                    Builder(builder: (context) {
                      String txt = "";
                      if (note.updateDate!.isAfter(note.createDate!)) {
                        txt = "Updated ${timeago.format(note.updateDate!)}";
                      } else {
                        txt = "Created ${timeago.format(note.createDate!)}";
                      }

                      return Text(
                        txt,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.grey),
                      );
                    })
                  ],
                ),
              ),
            );
          });
    } else {
      return const Center(child: Text("No Notes found"));
    }
  }
}
