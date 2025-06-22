import 'package:e_commercee/core/components/cache_image.dart';
import 'package:e_commercee/core/functions/build_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, "Product Name"),
      body: ListView(
        children: [
          CacheImage(
            image:
                "https://img.freepik.com/free-vector/modern-new-arrival-composition-with-realistic-design_23-2147885434.jpg?uid=R155199198&ga=GA1.1.1889806916.1750258279&w=740",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product name'),
                    Text('123 LE'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('3'),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Product Description'),
                SizedBox(
                  height: 20,
                ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              unratedColor: Colors.amber.withAlpha(50),
              itemCount: 5,
              itemSize: 50.0,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
