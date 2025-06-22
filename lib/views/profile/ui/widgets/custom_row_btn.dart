

import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CustomRowBtn extends StatelessWidget {
  const CustomRowBtn({
    super.key,
    required this.icon,
    this.onTap,
    required this.text,
  });

  final IconData icon;
  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColors.kWhiteColor),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.kWhiteColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}