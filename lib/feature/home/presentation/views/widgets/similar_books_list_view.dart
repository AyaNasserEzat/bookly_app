import 'package:bookly/feature/home/presentation/view_model/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/view_model/cubits/similar_books_cubit/similar_books_state.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_books_list_view_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return 
          SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: CustomBookImage(
                    bookImage:
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                        '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const CustomBooksListViewShimmer();
        }
      },
    );
  }
}
