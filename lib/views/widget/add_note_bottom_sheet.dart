import 'package:flutter/material.dart';
import 'custom_button_sheet.dart';
import 'custom_text_fild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: const AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> fromKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
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
            height: 100,
          ),
          CustomButton(
            onTap: () {
              if (fromKey.currentState!.validate()) {
                fromKey.currentState!.save();
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
