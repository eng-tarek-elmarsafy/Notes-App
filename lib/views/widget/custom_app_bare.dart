import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomAppBar({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         text,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        CustomSearchIcon(icon:icon)
      ],
    );
  }
}
