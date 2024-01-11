import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:noteapp/blocs/note_form/note_form_bloc.dart';
import 'package:noteapp/blocs/submit_note/submit_note_bloc.dart';
import 'package:noteapp/models/note/note.dart';
import 'package:noteapp/utils/form_validator.dart';
import 'package:noteapp/utils/show_snack.dart';

class CreateEditNotePage extends StatefulWidget {
  const CreateEditNotePage({super.key, required this.note});

  static const String path = "/note";

  final Note note;

  @override
  State<CreateEditNotePage> createState() => _CreateEditNotePageState();
}

class _CreateEditNotePageState extends State<CreateEditNotePage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SubmitNoteBloc, SubmitNoteState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, submitNoteState) {
        submitNoteState.maybeMap(
            success: (success) {
              showSnackbar(context, message: success.successMessage);
              // go back to note list page after successful create/update
              Navigator.pop(context);
            },
            error: (error) {
              showSnackbar(context, message: error.errorMessage);
            },
            orElse: () {});
      },
      builder: (context, submitNoteState) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title:
                  Text(widget.note == Note.empty() ? "Add Note" : "Edit Note"),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) => genericValidator("Title", value),
                      onChanged: (value) {
                        context.read<NoteFormBloc>().add(
                            NoteFormEvent.changeNoteTitle(title: value.trim()));
                      },
                      decoration: const InputDecoration(
                        labelText: 'Title',
                        hintText: 'Enter note title here...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const Gap(10),
                    TextFormField(
                      validator: (value) => genericValidator("Content", value),
                      onChanged: (value) {
                        context.read<NoteFormBloc>().add(
                            NoteFormEvent.changeNoteContent(
                                content: value.trim()));
                      },
                      minLines: 5,
                      maxLines: 10,
                      decoration: const InputDecoration(
                        labelText: 'Content',
                        hintText: 'Enter note content here...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    if (submitNoteState == const SubmitNoteState.loading()) ...[
                      const Gap(20),
                      const CircularProgressIndicator()
                    ]
                  ],
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: FloatingActionButton.extended(
                onPressed: submitNoteState == const SubmitNoteState.loading()
                    ? () {
                        // prevent tap event if currently submitting the form
                      }
                    : () {
                        if (formKey.currentState!.validate()) {
                          context
                              .read<SubmitNoteBloc>()
                              .add(const SubmitNoteEvent.submitForm());
                        }
                      },
                tooltip: 'Save',
                label: const Text("Save"),
                icon: const Icon(Icons.save),
              ),
            ));
      },
    );
  }
}
