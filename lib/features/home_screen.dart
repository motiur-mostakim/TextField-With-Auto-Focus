import 'package:flutter/material.dart';
import 'package:textfield_with_auto_focus/core/utils/app_colors.dart';
import 'package:textfield_with_auto_focus/core/widget/btn_widget.dart';
import 'package:textfield_with_auto_focus/core/widget/textField_widget.dart';

import '../core/utils/app_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailFocusNode = FocusNode();
    final passwordFocusNode = FocusNode();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(
              focusNode: emailFocusNode,
              hint: AppString.writeEmail,
            ),
            const SizedBox(
              height: 30,
            ),
            TextFieldWidget(
              focusNode: passwordFocusNode,
              hint: AppString.writePassword,
            ),
            const SizedBox(
              height: 30,
            ),
            BtnWidget(
                btnTextColor: AppColors.appWhiteColor,
                btnText: AppString.emailAutoFocusText,
                btnFunc: () {
                  emailFocusNode.requestFocus();
                },
                btnColor: AppColors.primaryColor),
            const SizedBox(
              height: 30,
            ),
            BtnWidget(
                btnTextColor: AppColors.appWhiteColor,
                btnText: AppString.passwordAutoFocusText,
                btnFunc: () {
                  passwordFocusNode.requestFocus();
                },
                btnColor: AppColors.primaryColor),
          ],
        ),
      ),
    );
  }
}
