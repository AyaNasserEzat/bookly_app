import 'package:bookly/feature/home/presentation/views/widgets/best_seller_item_shimmer.dart';
import 'package:flutter/material.dart';

class BestSellerItemShimmerListView extends StatelessWidget {
  const BestSellerItemShimmerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
          child: BestSellerItemShimmer(),
        );
      }, childCount: 10),
    );
  }
}
