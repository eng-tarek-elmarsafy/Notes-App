import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_button_sheet.dart';
import 'custom_text_fild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextFild(
            onSaved: (p0) {
              title = p0;
            },
            maxLines: null,
            text: 'Title',
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextFild(
            onSaved: (p0) {
              subTitle = p0;
            },
            maxLines: 5,
            text: 'Content',
          ),
          const SizedBox(
            height: 80,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var note = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    data: DateTime.now().toString(),
                    // ignore: deprecated_member_use
                    color: Colors.greenAccent.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
