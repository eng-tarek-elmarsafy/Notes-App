import 'package:flutter/material.dart';

import 'custom_app_bare.dart';
import 'custom_text_fild.dart';

class EidtViewBody extends StatelessWidget {
  const EidtViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        CustomAppBar(
          text: 'Edit Note',
          icon: Icons.check,
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextFild(maxLines: null, text: 'Title'),
        SizedBox(
          height: 24,
        ),
        CustomTextFild(maxLines: 5, text: 'content'),
      ],
    );
  }
}
