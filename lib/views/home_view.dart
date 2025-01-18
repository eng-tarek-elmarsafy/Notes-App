import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import 'widget/add_note_bottom_sheet.dart';
import 'widget/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent,
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) => BlocProvider(
                    create: (context) => AddNoteCubit(),
                    child: AddNoteBottomSheet(),
                  ));
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: NotesViewBody(),
    );
  }
}
