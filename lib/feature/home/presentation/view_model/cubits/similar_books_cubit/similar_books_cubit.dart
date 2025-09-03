import 'package:bookly/feature/home/data/repositores/home_repository.dart';
import 'package:bookly/feature/home/presentation/view_model/cubits/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepository homeRepo;

  Future<void> fetechSimilarBooks({required String category}) async {
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (faiure) {
        emit(SimilarBooksFailure(faiure.errMessage));
      },
      (books) {
        emit(SimilarBooksSuccess(books));
      },
    );
  }
}
