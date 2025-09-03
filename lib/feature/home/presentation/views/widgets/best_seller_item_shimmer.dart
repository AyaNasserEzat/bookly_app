import 'package:bookly/core/widgets/custom_shimmer_book_image.dart';
import 'package:bookly/core/widgets/custom_shimmer_container.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BestSellerItemShimmer extends StatelessWidget {
  const BestSellerItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        height: 120,
        child: Row(
          spacing: 3,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBookImageShimmer(),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomShimmerContainer(
                    width: MediaQuery.of(context).size.width * .5,
                    height: 20,
                  ),
                  CustomShimmerContainer(width: 100, height: 15),

                  Row(
                    spacing: 8,
                    children: [
                      CustomShimmerContainer(width: 40, height: 20),
                      const Spacer(),
                      CustomShimmerContainer(width: 60, height: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}