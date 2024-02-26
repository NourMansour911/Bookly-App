import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.isLeft});
  final bool isLeft;
  @override
  Widget build(BuildContext context) {
    return isLeft
        ? Container(
            width: MediaQuery.of(context).size.width * 0.40,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16),
                bottomLeft: const Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text(
                '19.99 €',
                style: Styles.textStyle16.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          )
        : Container(
            width: MediaQuery.of(context).size.width * 0.40,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFEF8262),
              borderRadius: BorderRadius.only(
                topRight: const Radius.circular(16),
                bottomRight: const Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text(
                'Free preview',
                style: Styles.textStyle16.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          );
  }
}
