

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class CacheImage extends StatelessWidget {
  const CacheImage({
    super.key, required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: image,
      height: 250,
      width: double.infinity,
      placeholder: (context, url) => SizedBox(height: 200,
        child: CustomCircleProgIndicator(),
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}

class CustomCircleProgIndicator extends StatelessWidget {
  const CustomCircleProgIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: AppColors.kPrimaryColor,
    );
  }
}
