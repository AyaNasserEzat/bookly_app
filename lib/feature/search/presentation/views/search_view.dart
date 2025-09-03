import 'package:bookly/core/utils/service_locatore.dart';
import 'package:bookly/feature/search/data/repositorys/search_repository_imp.dart';
import 'package:bookly/feature/search/presentation/view_model/cubits/search_cubit/search_cubit.dart';
import 'package:bookly/feature/search/presentation/view_model/cubits/search_cubit/search_state.dart';
import 'package:bookly/feature/search/presentation/views/widgets/custom_text_form_field.dart';
import 'package:bookly/feature/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => SearchCubit(getIt.get<SearchRepositoryImpelmention>()),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CustomTextFormField(),
                ),
                SearchResultListView(),
              ],
            ),
          );
        },
      ),
    );
  }
}
