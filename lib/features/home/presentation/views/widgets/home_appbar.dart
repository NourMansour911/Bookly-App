import '../../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            Assets.imagesLogo,
            width: 75,
            height: 16.1,
          ),
          SvgPicture.asset(
            Assets.imagesSearch,
            width: 25,
            height: 25,
          ),
        ],
      ),
    );
  }
}
