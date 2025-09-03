import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();
  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFailure(this.errMessage);
}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<Item> books;

  const SimilarBooksSuccess(this.books);
}
