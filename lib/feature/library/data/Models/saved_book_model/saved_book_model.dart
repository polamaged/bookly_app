import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:hive/hive.dart';

part 'saved_book_model.g.dart';

@HiveType(typeId: 0)
class SavedBookModel extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String thumbnail;

  @HiveField(2)
  final String previewLink;

  SavedBookModel({
    required this.title,
    required this.thumbnail,
    required this.previewLink,
  });

  factory SavedBookModel.fromBookModel(BookModel book) {
  final volumeInfo = book.volumeInfo;

  return SavedBookModel(
    title: volumeInfo.title ?? 'No Title',
    thumbnail: volumeInfo.imageLinks?.thumbnail ?? '',
    previewLink: volumeInfo.previewLink ?? '',
  );
}
}