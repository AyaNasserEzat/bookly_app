import 'package:bookly/core/utils/service_locatore.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:bookly/feature/home/data/repositores/home_repository_imp.dart';
import 'package:bookly/feature/home/presentation/view_model/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/widgets/product_delits_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilarBooksCubit(getIt.get<HomeRepositoryImp>())..fetechSimilarBooks(category: item.volumeInfo?.categories![0] ?? '',),
      child: Scaffold(body: ProductDelitsBody(item: item)),
    );
  }
}
