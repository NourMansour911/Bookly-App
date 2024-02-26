import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Harry Potter\nand the Goblet of Fire',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20,
          ),
          const Text('J.K. Rowling', style: Styles.textStyle14),
          Row(
            children: <Widget>[
              Text(
                '19.99 €',
                style: textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              SvgPicture.asset(Assets.imagesStar),
              SizedBox(width: 6),
              Text('4.8', style: Styles.textStyle16),
              SizedBox(width: 8),
              Text('(2390)', style: Styles.textStyle14),
            ],
          )
        ],
      ),
    );
  }
}
