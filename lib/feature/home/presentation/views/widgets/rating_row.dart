import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key, required this.rating, required this.count});
final num rating;
final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 4,
      children: [
        Icon(Icons.star, color: Colors.yellow),
        Text(
          rating.toString(),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text('(${count.toString()})', style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
