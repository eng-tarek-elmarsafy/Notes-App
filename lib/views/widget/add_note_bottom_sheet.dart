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
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextFild(
              maxLines: null,
              text: 'Title',
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextFild(
              maxLines: 5,
              text: 'Content',
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
