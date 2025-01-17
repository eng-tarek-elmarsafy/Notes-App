import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  const CustomButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              if (State is AddNoteLoading) {
                return const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.blueAccent,
                  ),
                );
              } else {
                return const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
