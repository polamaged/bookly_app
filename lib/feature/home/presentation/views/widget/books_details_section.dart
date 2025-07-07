import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/bookingrating.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/books_action.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.books});
final BookModel books;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(imageUrl: books.volumeInfo.imageLinks.thumbnail,),
        ),
        const SizedBox(height: 43),
        Text(books.volumeInfo.title!, style: Styles.textStyle30 , textAlign: TextAlign.center,),
        const SizedBox(height: 6),
        Text(
          books.volumeInfo.authors![0],
          style: Styles.textStyle19.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 20),
        BookRating(
          rating: books.volumeInfo.pageCount! , count: books.volumeInfo.pageCount!,
          mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 35),
        const BookAction(),
      ],
    );
  }
}
