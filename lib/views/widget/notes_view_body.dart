import 'package:flutter/material.dart';
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
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
