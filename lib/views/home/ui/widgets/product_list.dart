

import 'package:e_commercee/views/home/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key, this.physics, this.shrinkwrap,
  });

  final bool? shrinkwrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: shrinkwrap ?? true,
        physics: physics ?? NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context ,index){
          return ProductCard();}
    );
  }
}