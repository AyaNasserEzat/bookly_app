import 'package:bookly/feature/home/data/repositores/home_repository.dart';
import 'package:bookly/feature/home/presentation/view_model/cubits/featur_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepository homeRepo;

  Future<void> fetechFeaturedBooks() async {
    var result = await homeRepo.fetchFeateredBooks();
    result.fold(
      (faiure) {
        emit(FeaturedBooksFailure(faiure.errMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
