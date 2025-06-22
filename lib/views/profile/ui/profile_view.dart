import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
             child: Icon(Icons.person,
             size: 45,),
           ),
            SizedBox(height: 10,),
           Text("User Name", style: TextStyle(fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
           Text("User Email",),
           SizedBox(height: 10,),
           Card(
             color: AppColors.kPrimaryColor,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.all(Radius.circular(16),),
             ),
             child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Icon(Icons.person, color: Colors.white,),
                   Text("Edit Name",

                   style: TextStyle(color: AppColors.kWhiteColor),),
                   Icon(Icons.arrow_forward_ios,
                   color: AppColors.kWhiteColor,
                   )
                 ],
               ),
             ),
           )

         ],
        ),
      ),
    );
  }
}