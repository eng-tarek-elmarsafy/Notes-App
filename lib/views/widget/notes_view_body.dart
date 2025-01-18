import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'custom_app_bare.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const CustomAppBar(
            text: 'Notes',
            icon: Icons.search_rounded,
          ),
          Expanded(
              child: BlocProvider(
            create: (context) => NotesCubit(),
            child: NotesListView(),
          )),
        ],
      ),
    );
  }
}
