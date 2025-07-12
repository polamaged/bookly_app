import 'package:bloc/bloc.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/feature/library/data/Models/saved_book_model/saved_book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'saved_books_state.dart';

class SavedBooksCubit extends Cubit<SavedBooksState> {
  SavedBooksCubit() : super(SavedBooksInitial());

  List<SavedBookModel>? savedbooks;

  fetchsavedbooks()
  {
    var bookbox = Hive.box<SavedBookModel>(kLibraryBox);
    savedbooks = bookbox.values.toList();

    emit(SavedBooksSuccess());
  }
}
