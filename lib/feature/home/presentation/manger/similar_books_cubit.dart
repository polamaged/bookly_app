import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  
 final HomeRepo homeRepo ;

  Future<void>fetchSimilarBooks({required String catagory})async
  {
    emit(SimilarBooksLoading());
   var result =  await homeRepo.fetchSimilarBooks(catagory: catagory);

   result.fold((failure) {
    emit(SimilarBooksFailure(failure.errMessage));
   },(books) {
    emit(SimilarBooksSuccess(books));
   } ,);
  }
}
