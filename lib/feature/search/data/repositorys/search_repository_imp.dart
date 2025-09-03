import 'package:bookly/core/error/fauiler.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:bookly/feature/search/data/repositorys/search_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepositoryImpelmention extends SearchRepository {
  ApiService apiService;
  SearchRepositoryImpelmention(this.apiService);
  @override
  Future<Either<Failure, List<Item>>> searchByName({
    required String name,
  }) async {
    try {
      final data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooksSorting=relevance&q=$name',
      );
      var books = BookModel.fromJson(data);

      return right(books.items ?? []);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
