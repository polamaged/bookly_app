import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/search/data/repos/search_repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void>fetchSearchBooks({required String bookname})async
  {
    emit(SearchBooksLoading());
   var result =  await searchRepo.fetchSearchBooks(bookname: bookname);

   result.fold((failure) {
    emit(SearchBooksFailure(failure.errMessage));
   },(books) {
    emit(SearchBooksSuccess(books));
   } ,);
  }

}

