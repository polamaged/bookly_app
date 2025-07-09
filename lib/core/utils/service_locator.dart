import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo/home_repo_impl.dart';
import 'package:bookly_app/feature/search/data/repos/search_repo/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(apiService: getIt.get<ApiService>()),
  );
  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(apiService: getIt.get<ApiService>()));
}
