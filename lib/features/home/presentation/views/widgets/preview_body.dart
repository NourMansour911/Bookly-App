import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_avatar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/preview_book_info.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/suggested_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'preview_appbar.dart';

import 'package:flutter/material.dart';

class PreViewBody extends StatelessWidget {
  const PreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PreViewAppBar(),
        SizedBox(height: 20),
        SizedBox(height: 220, child: BookAvatar(aspect: 162 / 243, radius: 22)),
        SizedBox(height: 20),
        PreViewBookInfo(preview: true),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookAction(isLeft: true),
            BookAction(isLeft: false),
          ],
        ),
        SizedBox(height: 40),
        Container(
          margin: const EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: const Text('You Can also Like', style: Styles.textStyle14),
        ),
        SizedBox(height: 16),
        SuggestedBook(),
      ],
    );
  }
}
