import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/app_text_style.dart';
import 'package:bookly/core/utils/functions/lanch_url.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:flutter/material.dart';

class FreeAndPreviewButton extends StatelessWidget {
  const FreeAndPreviewButton({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  bottomLeft: Radius.circular(22),
                ),
              ),
              child: Center(
                child: Text(
                  r"Free",
                  style: AppTextStyle.textStyle18.copyWith(
                    color: AppColor.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                launchUrlFunction(url: item.volumeInfo?.previewLink ?? '', context: context);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.orange,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  ),
                ),
                child: Center(
                  child: Text("Free Preview", style: AppTextStyle.textStyle18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
