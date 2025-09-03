import 'package:bookly/core/error/fauiler.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:bookly/feature/home/data/repositores/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImp extends HomeRepository {
  ApiService apiService;
  HomeRepositoryImp(this.apiService);
  @override
  Future<Either<Failure, List<Item>>> fetchFeateredBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      List<Item>? books = BookModel.fromJson(data).items;

      return right(books ?? []);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&sorting=newest&q=subject:computers',
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

  @override
  Future<Either<Failure, List<Item>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooksSorting=relevance&q=$category',
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
