import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class BookAvatar extends StatelessWidget {
  const BookAvatar({
    super.key,
    required this.aspect,
    this.radius = 8,
  });
  final double aspect;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspect,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
            image: AssetImage(Assets.imagesTestBook),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
