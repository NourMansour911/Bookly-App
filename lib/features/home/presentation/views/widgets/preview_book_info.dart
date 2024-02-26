import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:svg_flutter/svg.dart';

import 'package:flutter/material.dart';

class PreViewBookInfo extends StatelessWidget {
  const PreViewBookInfo({
    super.key,
    this.preview,
  });
  final preview;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('The Jungle Book', style: Styles.textStyle30),
        SizedBox(height: 4),
        const Text('Rudyard Kipling', style: Styles.textStyle18),
        SizedBox(height: 12),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            !preview
                ? Text(
                    '19.99 €',
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : SizedBox(width: 0.0, height: 0.0),
            SvgPicture.asset(Assets.imagesStar),
            SizedBox(width: 6),
            Text('4.8', style: Styles.textStyle16),
            SizedBox(width: 10),
            Text('(2390)',
                style: Styles.textStyle14.copyWith(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
