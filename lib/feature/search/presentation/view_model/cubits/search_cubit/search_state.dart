import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:equatable/equatable.dart';
abstract class SearchState extends Equatable {
  const SearchState();
  @override
  List<Object> get props => [];
}

class SearchBooksInitial extends SearchState {}

class SearchBooksLoading extends SearchState {}

class SearchBooksFailure extends SearchState {
  final String errMessage;
  const SearchBooksFailure(this.errMessage);
}

class SearchBooksSuccess extends SearchState {
  final List<Item> books;
  const SearchBooksSuccess(this.books);
}
