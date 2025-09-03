import 'package:bookly/core/error/fauiler.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
 Future<Either<Failure, List<Item>>>fetchFeateredBooks();
  Future<Either<Failure, List<Item>>>fetchNewsetBooks();
  Future<Either<Failure, List<Item>>>fetchSimilarBooks({required String category});
}