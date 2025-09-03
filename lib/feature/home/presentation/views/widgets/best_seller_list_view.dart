import 'package:bookly/feature/home/presentation/view_model/cubits/news_books_cubit/newsed_books_cubit.dart';
import 'package:bookly/feature/home/presentation/view_model/cubits/news_books_cubit/newsed_books_state.dart';
import 'package:bookly/feature/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/feature/home/presentation/views/widgets/best_seller_item_shimmer_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsedBooksCubit, NewsedBooksState>(
      builder: (context, state) {
        if (state is NewsedBooksSuccess) {
          return 
          //BestSellerItemShimmerListView();
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 16,
                ),
                child: BestSellerItem(bookModelItem: state.books[index]),
              );
            }, childCount: state.books.length),
          );
        } else if (state is NewsedBooksFailure) {
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(child: Text(state.errMessage)),
            ),
          );
        } else {
          return BestSellerItemShimmerListView();
        }
      },
    );
  }
}
