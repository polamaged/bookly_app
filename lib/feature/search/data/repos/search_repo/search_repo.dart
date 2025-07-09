import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract  class SearchRepo {
Future<Either<Failure,List<BookModel>>> fetchSearchBooks({required String bookname});
}