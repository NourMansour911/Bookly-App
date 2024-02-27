import 'package:bookly_app/features/home/presentation/views/widgets/book_avatar.dart';

import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 15 : 0, right: 16),
            child: BookAvatar(aspect: 150 / 224, radius: 16),
          );
        },
      ),
    );
  }
}
