import 'package:bookly/core/error/fauiler.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepository {
  Future<Either<Failure,List<Item>>>  searchByName({required String name});
}