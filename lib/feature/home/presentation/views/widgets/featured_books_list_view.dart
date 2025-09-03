import 'package:bookly/feature/home/presentation/view_model/cubits/featur_books_cubit/featured_books_cubit.dart';
import 'package:bookly/feature/home/presentation/view_model/cubits/featur_books_cubit/featured_books_state.dart';
import 'package:bookly/feature/home/presentation/views/product_details_view.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_books_list_view_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListiew extends StatelessWidget {
  const FeaturedBooksListiew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductDetailsView(item: state.books[index]);
                          },
                        ),
                      );
                    },
                    child: CustomBookImage(
                      bookImage:
                          state
                              .books[index]
                              .volumeInfo
                              ?.imageLinks
                              ?.thumbnail ??
                          '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errMessage);
        } else {
          return CustomBooksListViewShimmer();
        }
      },
    );
  }
}
