import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;
  const NoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contxt) => EditNoteView(),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(note.color),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: .4),
                      fontSize: 20,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, top: 16),
                child: Text(
                  note.data,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.4),
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
