


import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100 ,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.kPrimaryColor,
                    foregroundColor: AppColors.kWhiteColor,
                    child: Icon(categories[index].icon, size: 40,),
                  ),
                  Text(categories[index].text),
                ],
              ),
            );

          }),
    );
  }
}


List<Category> categories = [
  Category(icon: Icons.sports, text: 'Sports'),
  Category(icon: Icons.tv, text: 'Electronics'),
  Category(icon: Icons.collections, text: 'collections'),
  Category(icon: Icons.book, text: 'Books'),
  Category(icon: Icons.games, text: 'Games'),
];

class Category{
  final IconData icon;
  final String text;

  Category({required this.icon, required this.text});
}
