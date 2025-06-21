
import 'package:flutter/material.dart';

import 'custom_arow_button.dart';

class CustomRowWithArrowBtn extends StatelessWidget {
  const CustomRowWithArrowBtn({
    super.key,
    required this.text,
    required this.onTap,
  });

  final void Function()? onTap;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        CustomArrowButton(
          onTap: onTap,
        ),
      ],
    );
  }
}




