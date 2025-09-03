import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/service_locatore.dart';
import 'package:bookly/feature/home/data/repositores/home_repository_imp.dart';
import 'package:bookly/feature/home/presentation/view_model/cubits/featur_books_cubit/featured_books_cubit.dart';
import 'package:bookly/feature/home/presentation/view_model/cubits/news_books_cubit/newsed_books_cubit.dart';
import 'package:bookly/feature/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
HomeRepositoryImp test=  HomeRepositoryImp(ApiService(Dio()));
var res= test.fetchFeateredBooks();
print(res);
  setUpServiceLocatore();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  FeaturedBooksCubit(getIt.get<HomeRepositoryImp>())
                    ..fetechFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (context) =>
                  NewsedBooksCubit(getIt.get<HomeRepositoryImp>())
                    ..fetechNewsedBooks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColor.primaryColor,
        ),
        home: SplashView(),
      ),
    );
  }
}
