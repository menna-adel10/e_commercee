import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.isSecured = false, this.keyboardType,
  });

  final String labelText;
  final Widget? suffixIcon;
  final bool isSecured;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecured,
      obscuringCharacter: "*",
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This Field is Required ";
        }
        return null;
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}