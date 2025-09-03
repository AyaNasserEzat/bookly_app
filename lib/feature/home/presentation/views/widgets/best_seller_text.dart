import 'package:flutter/material.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        "Newset books",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'ScGT Sectra Fine Regularhyler',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
