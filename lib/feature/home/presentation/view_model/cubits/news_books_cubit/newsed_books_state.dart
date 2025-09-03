import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:equatable/equatable.dart';

abstract class NewsedBooksState extends Equatable {
  const NewsedBooksState();
  @override
  List<Object> get props => [];
  
}
class NewsedBooksInitial extends NewsedBooksState {}

class NewsedBooksLoading extends NewsedBooksState {}

class NewsedBooksFailure extends NewsedBooksState {
  final String errMessage;

  const NewsedBooksFailure(this.errMessage);
}

class NewsedBooksSuccess extends NewsedBooksState {
  final List<Item> books;

  const NewsedBooksSuccess(this.books);
}