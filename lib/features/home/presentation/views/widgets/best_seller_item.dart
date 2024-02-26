import 'package:bookly_app/features/home/presentation/views/widgets/book_avatar.dart';
import 'package:bookly_app/features/home/presentation/views/preview_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_info.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => PreView()),
      child: SizedBox(
        height: 105,
        child: Row(
          children: <Widget>[
            BookAvatar(aspect: 7 / 10.5, radius: 8),
            SizedBox(width: 20),
            BookInfo()
          ],
        ),
      ),
    );
  }
}
