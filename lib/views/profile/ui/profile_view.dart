import 'package:e_commercee/views/profile/ui/widgets/custom_row_btn.dart';
import 'package:e_commercee/views/profile/ui/widgets/edit_name_view.dart';
import 'package:e_commercee/views/profile/ui/widgets/my_orders.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/functions/navigate_to.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height *.65,
        child: Card(
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
                CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.kPrimaryColor,
                  foregroundColor: AppColors.kWhiteColor,
                  child: Icon(
                    Icons.person,
                    size: 45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "User Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "User Email",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomRowBtn(
                  onTap: () => navigateTo(context, EditNameView()),
                  icon: Icons.person,
                  text: 'Edit Name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomRowBtn(
                  onTap: () => navigateTo(context, MyOrdersView(),),
                  icon: Icons.shopping_basket,
                  text: 'My Orders',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomRowBtn(
                  onTap: () {},
                  icon: Icons.logout,
                  text: 'Logout',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

