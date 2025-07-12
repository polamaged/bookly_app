import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'saved_book_model.dart';

extension BookModelToSavedBook on BookModel {
  SavedBookModel toSavedBookModel() {
    return SavedBookModel(
      title: volumeInfo.title ?? 'No title',
      thumbnail: volumeInfo.imageLinks?.thumbnail ?? '',
      previewLink: volumeInfo.previewLink ?? '',
    );
  }
}