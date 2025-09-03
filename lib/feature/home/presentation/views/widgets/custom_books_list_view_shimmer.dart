import 'package:bookly/core/widgets/custom_shimmer_book_image.dart';
import 'package:flutter/material.dart';

class CustomBooksListViewShimmer extends StatelessWidget {
  const CustomBooksListViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: CustomBookImageShimmer(),
          );
        },
      ),
    );
  }
}
