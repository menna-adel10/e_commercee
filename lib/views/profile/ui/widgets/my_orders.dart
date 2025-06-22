

import 'package:e_commercee/core/functions/build_appbar.dart';
import 'package:e_commercee/views/home/ui/widgets/product_list.dart';
import 'package:flutter/material.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildCustomAppBar(context, 'My Orders'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ProductList(shrinkwrap: false,
        physics: BouncingScrollPhysics(),),
      ),
    );
  }
}
