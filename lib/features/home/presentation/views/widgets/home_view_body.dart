import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'home_appbar.dart';
import 'featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              HomeAppBar(),
              SizedBox(height: 40),
              CustomListView(),
              SizedBox(height: 40),
              Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: const Text('Best Seller', style: Styles.textStyle18)),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerList(),
        )
      ],
    );
  }
}
