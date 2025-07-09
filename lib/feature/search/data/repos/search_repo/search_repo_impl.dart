import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/search/data/repos/search_repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {

  final ApiService apiService;

  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({required String bookname}) async {
    try {
      var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=$bookname&Sorting=relevance',
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