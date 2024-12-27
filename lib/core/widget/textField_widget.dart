import 'package:flutter/material.dart';
import 'package:textfield_with_auto_focus/core/utils/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final FocusNode focusNode;
  const TextFieldWidget(
      {super.key, required this.hint, required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20),
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 2))),
    );
  }
}
