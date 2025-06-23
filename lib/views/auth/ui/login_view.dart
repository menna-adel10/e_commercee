import 'package:e_commercee/core/components/cache_image.dart';
import 'package:e_commercee/views/auth/logic/auth_cubit.dart';
import 'package:e_commercee/views/auth/logic/auth_state.dart';
import 'package:e_commercee/views/auth/ui/signup_view.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_arrow_with_btn.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_text_button.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_colors.dart';
import '../../../core/functions/navigate_to.dart';
import '../../../core/functions/show_msg.dart';
import '../../nav_bar/ui/main_home_view.dart';
import 'forgot_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if(state is LoginError){
          showMsg(context, state.message);
        }
      },
      builder: (context, state) {
        AuthenticationCubit cubit = context.read<AuthenticationCubit>();
        return Scaffold(
          body: state is LoginLoading ? CustomCircleProgIndicator() : SafeArea(

            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
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
                controller: emailController,
                              labelText: 'Email',
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              controller: passwordController,
                              labelText: 'password',
                              keyboardType: TextInputType.visiblePassword,
                
                              isSecured: true,
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off)),
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
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  cubit.login(
                                      email: emailController.text, password:
                                  passwordController.text);
                                }
                              }
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
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
