import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feature/home/data/repositores/home_repository_imp.dart';
import 'package:bookly/feature/search/data/repositorys/search_repository_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocatore() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepositoryImp>(
    HomeRepositoryImp(getIt.get<ApiService>()),
  );
    getIt.registerSingleton<SearchRepositoryImpelmention>(
    SearchRepositoryImpelmention(getIt.get<ApiService>()),
  );
}
