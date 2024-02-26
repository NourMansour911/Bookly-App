import 'package:get/get.dart';

import '../../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PreViewAppBar extends StatelessWidget {
  const PreViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () => Get.back(),
              child: Icon(Icons.close_sharp, size: 30)),
          SvgPicture.asset(
            Assets.imagesCart,
            width: 25,
            height: 25,
          ),
        ],
      ),
    );
  }
}
