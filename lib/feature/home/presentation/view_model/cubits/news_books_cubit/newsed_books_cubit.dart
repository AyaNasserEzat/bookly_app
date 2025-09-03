import 'package:bookly/feature/home/data/repositores/home_repository.dart';
import 'package:bookly/feature/home/presentation/view_model/cubits/news_books_cubit/newsed_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsedBooksCubit extends Cubit<NewsedBooksState> {
  NewsedBooksCubit(this.homeRepo) : super(NewsedBooksInitial());

  final HomeRepository homeRepo;

  Future<void> fetechNewsedBooks() async {
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (faiure) {
        emit(NewsedBooksFailure(faiure.errMessage));
      },
      (books) {
        emit(NewsedBooksSuccess(books));
      },
    );
  }
}
