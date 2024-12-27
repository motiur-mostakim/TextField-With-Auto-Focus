import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  final VoidCallback btnFunc;
  final String btnText;
  final Color btnColor;
  final Color btnTextColor;
  const BtnWidget(
      {super.key,
      required this.btnText,
      required this.btnFunc,
      required this.btnColor,
      required this.btnTextColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
            minimumSize: const Size(double.infinity, 50)),
        onPressed: btnFunc,
        child: Text(
          btnText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: btnTextColor,
          ),
        ));
  }
}
