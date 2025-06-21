

import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/components/cache_image.dart';
import '../../../auth/ui/widgets/custom_elevated_btn.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                child: CacheImage(
                  image:
                  "https://img.freepik.com/free-vector/modern-new-arrival-composition-with-realistic-design_23-2147885434.jpg?uid=R155199198&ga=GA1.1.1889806916.1750258279&w=740",
                ),
              ),
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  width: 65,
                  height: 35,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Text(
                    '10% OFF',
                    style: TextStyle(
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Product Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: AppColors.kGreyColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "100 LE",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "120 LE",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kGreyColor,
                    ),
                  ),
                ],
              ),
              CustomBtn(
                text: "Buy Now",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
