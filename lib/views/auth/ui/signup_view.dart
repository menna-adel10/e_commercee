import 'package:e_commercee/views/auth/ui/widgets/custom_arrow_with_btn.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_text_button.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Welcome To Our Market",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Card(
                margin: EdgeInsets.all(24),
                color: AppColors.kWhiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CustomTextField(
                        labelText: 'Name',
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        labelText: 'Email',
                        keyboardType: TextInputType.emailAddress,

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        labelText: 'password',
                        keyboardType: TextInputType.visiblePassword,
                        isSecured: true,
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.visibility_off)),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      CustomRowWithArrowBtn(
                        text: 'Sign Up',
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomRowWithArrowBtn(
                        text: 'Sign Up with google',
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomTextButton(
                            text: 'Login',
                            onTap:() {
                              Navigator.pop(context);
                            }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
