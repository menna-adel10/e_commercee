import 'package:e_commercee/views/auth/ui/signup_view.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_arrow_with_btn.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_text_button.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/functions/navigate_to.dart';
import '../../nav_bar/ui/main_home_view.dart';
import 'forgot_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomTextButton(
                            text: 'Forgot Password?',
                            onTap: () {
                             navigateTo(context, ForgotView());
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomRowWithArrowBtn(
                        text: 'Login',
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomRowWithArrowBtn(
                        text: 'Login with google',
                        onTap: () {
                          navigateTo(context, MainHomeView());
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomTextButton(
                            text: 'Sign Up',
                            onTap: () {
                              navigateTo(context, SignUpView());
                            },
                          ),
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
