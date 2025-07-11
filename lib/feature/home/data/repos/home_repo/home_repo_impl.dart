import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest',
      );

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
      try {
      var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=computerscience',
      );

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(errMessage: e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String catagory}) async {
   try {
      var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=computerscience&Sorting=relevance',
      );

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
