import 'package:e_commercee/views/auth/ui/widgets/custom_elevated_btn.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class ForgotView extends StatelessWidget {
  const ForgotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Enter your email to reset password",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 24,),
          Card(
            margin: EdgeInsets.all(24),
            color: AppColors.kWhiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomTextField(
                    labelText: 'Email',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomBtn(text: 'Submit',
                  onTap: (){},),
                ],
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}

