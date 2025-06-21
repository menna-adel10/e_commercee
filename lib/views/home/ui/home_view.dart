import 'package:e_commercee/views/home/ui/widgets/categories_list.dart';
import 'package:e_commercee/views/home/ui/widgets/product_list.dart';
import 'package:flutter/material.dart';
import '../../../core/components/custom_search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          CustomSearchField(),
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/buy.jpg"),
          SizedBox(
            height: 15,
          ),
          Text(
            'Popular Categories',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CategoriesList(),
          SizedBox(
            height: 15,
          ),
          Text('Popular Categories',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          ProductList(),
        ],
      ),
    );
  }
}


