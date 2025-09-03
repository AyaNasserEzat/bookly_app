import 'package:bookly/feature/search/data/repositorys/search_repository_imp.dart';
import 'package:bookly/feature/search/presentation/view_model/cubits/search_cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepositoryImpelmention) : super(SearchBooksInitial());
  SearchRepositoryImpelmention searchRepositoryImpelmention;

  Future<void> searchByName({required String name}) async {
    emit(SearchBooksLoading());
    var result = await searchRepositoryImpelmention.searchByName(name: name);
    result.fold(
      (faiure) {
        emit(SearchBooksFailure(faiure.errMessage));
      },
      (books) {
        emit(SearchBooksSuccess(books));
      },
    );
  }
}
