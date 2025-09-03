import 'package:bookly/feature/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/feature/home/presentation/views/widgets/best_seller_text.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              CustomAppBar(),
              FeaturedBooksListiew(),
              SizedBox(height: 20),
              BestSellerText(),
            ],
          ),
        ),
        BestSellerListView(),
      ],
    );
  }
}
