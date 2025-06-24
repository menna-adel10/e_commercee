import 'package:e_commercee/core/components/cache_image.dart';
import 'package:e_commercee/views/auth/logic/auth_cubit.dart';
import 'package:e_commercee/views/auth/logic/auth_state.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_arrow_with_btn.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_text_button.dart';
import 'package:e_commercee/views/auth/ui/widgets/custom_text_field.dart';
import 'package:e_commercee/views/nav_bar/ui/main_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_colors.dart';
import '../../../core/functions/show_msg.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if(state is RegisterSuccess){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainHomeView()));
        }
        if (state is RegisterError){
          showMsg(context, state.message);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: state is RegisterLoading? CustomCircleProgIndicator():
          SafeArea(
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
                              //controller: _nameController,
                              labelText: 'Name',
                              keyboardType: TextInputType.name,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              //controller: _emailController,
                              labelText: 'Email',
                              keyboardType: TextInputType.emailAddress,
                
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              //controller: _passwordController,
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
                            CustomRowWithArrowBtn(
                              text: 'Sign Up',
                              onTap: () {
                                if(_formKey.currentState!.validate()){
                                  context.read<AuthenticationCubit>().register
                                    (name: _nameController.text, email: _emailController.text, password: _passwordController.text);

                                }
                              },
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
                                    onTap: () {
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
          ),
        );
      },
    );
  }
  @override
  void dispose(){
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }
}
