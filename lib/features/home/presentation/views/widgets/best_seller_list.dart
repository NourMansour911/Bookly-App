import 'package:flutter/cupertino.dart';

import 'best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 20, right: 20),
          child: BestSellerItem(),
        );
      },
    );
  }
}
