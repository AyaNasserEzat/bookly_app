import 'package:bookly/feature/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/feature/home/presentation/views/widgets/best_seller_item_shimmer_list_view.dart';
import 'package:bookly/feature/search/presentation/view_model/cubits/search_cubit/search_cubit.dart';
import 'package:bookly/feature/search/presentation/view_model/cubits/search_cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return SliverList(
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
        } 
        else if (state is SearchBooksFailure) {
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(child: Text(state.errMessage)),
            ),
          );
        } else if(state is SearchBooksLoading){
          return BestSellerItemShimmerListView();
        }
        else{
          return SliverToBoxAdapter(
            child: Container(),
          );
        }
      },
    );
  }
}
