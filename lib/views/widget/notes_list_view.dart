import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();

          List<NoteModel> notes =
              BlocProvider.of<NotesCubit>(context).notes ?? [];
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (BuildContext context, int index) {
              return NoteItem(
                note: notes[index],
              );
            },
          );
        },
      ),
    );
  }
}
