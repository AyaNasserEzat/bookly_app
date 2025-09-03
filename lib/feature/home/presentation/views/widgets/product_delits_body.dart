import 'package:bookly/core/utils/app_text_style.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/feature/home/presentation/views/widgets/free_and_preview_button.dart';
import 'package:bookly/feature/home/presentation/views/widgets/rating_row.dart';
import 'package:bookly/feature/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class ProductDelitsBody extends StatelessWidget {
  const ProductDelitsBody({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            spacing: 5,
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                  Spacer(),
                  Icon(Icons.shopping_cart),
                ],
              ),
              SizedBox(
                height: 250,
                child: CustomBookImage(
                  bookImage: item.volumeInfo?.imageLinks?.thumbnail ?? '',
                ),
              ),
              SizedBox(height: 30),
              Text(
                item.volumeInfo?.title ?? '',
                style: AppTextStyle.textStyle22Bold,
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),

              Text(
                item.volumeInfo?.authors![0] ?? '',
                style: AppTextStyle.textStylegrey,
              ),
              RatingRow(
                rating: item.volumeInfo?.averageRating?.round() ?? 0,
                count: item.volumeInfo?.ratingsCount ?? 0,
              ),

              FreeAndPreviewButton(item: item,),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'you can also see',
                  style: AppTextStyle.textStyle20
                ),
              ),
              SizedBox(height: 125, child: SimilarBooksListView()),
            ],
          ),
        ),
      ),
    );
  }
}
