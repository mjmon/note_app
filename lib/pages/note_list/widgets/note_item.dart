import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noteapp/models/note/note.dart';
import 'package:noteapp/pages/create_edit_note/create_edit_note_page.dart';
import 'package:timeago/timeago.dart' as timeago;

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note, required this.onDelete});

  final Note note;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) {
        onDelete();
      },
      confirmDismiss: (direction) async {
        final result = await showOkCancelAlertDialog(
            context: context,
            isDestructiveAction: true,
            title: "Delete Note",
            message: "Are you sure?",
            okLabel: "Yes");

        if (result == OkCancelResult.ok) {
          return true;
        } else {
          return false;
        }
      },
      child: Card(
        child: ListTile(
          onTap: () {
            GoRouter.of(context).push(CreateEditNotePage.path, extra: note);
          },
          title: Text(
            note.title,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(note.content),
              Builder(builder: (context) {
                String timestamp = "";
                if (note.updateDate!.isAfter(note.createDate!)) {
                  timestamp = "Updated ${timeago.format(note.updateDate!)}";
                } else {
                  timestamp = "Created ${timeago.format(note.createDate!)}";
                }

                return Text(
                  timestamp,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
