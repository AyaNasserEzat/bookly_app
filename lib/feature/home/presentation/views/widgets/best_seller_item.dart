import 'package:bookly/core/utils/app_text_style.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:bookly/feature/home/presentation/views/product_details_view.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/feature/home/presentation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModelItem});
  final Item bookModelItem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductDetailsView(item: bookModelItem);
            },
          ),
        );
      },
      child: SizedBox(
        height: 120,
        child: Row(
          spacing: 3,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBookImage(
              bookImage: bookModelItem.volumeInfo?.imageLinks?.thumbnail ?? '',
            ),
            Expanded(
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModelItem.volumeInfo?.title ?? 'UnKnown',
                      style: AppTextStyle.textStyle20,
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModelItem.volumeInfo?.authors?.first ?? '',
                      style: AppTextStyle.textStylegrey,
                      overflow: TextOverflow.clip,
                      maxLines: 1,
                    ),
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      Text("free", style: AppTextStyle.textStyle22Bold),
                      Spacer(),
                      RatingRow(
                        rating:
                            bookModelItem.volumeInfo?.averageRating?.round() ??
                            0,
                        count: bookModelItem.volumeInfo?.ratingsCount ?? 0,
                      ),
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
