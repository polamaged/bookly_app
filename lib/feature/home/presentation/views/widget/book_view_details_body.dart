import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/books_details_section.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_details_appbar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/smilar_book_section.dart';
import 'package:bookly_app/feature/library/data/Models/saved_book_model/saved_book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key, required this.bookModel});

final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                 CustomBookDeitalsAppBar(book: SavedBookModel.fromBookModel(bookModel)),
                BookDetailsSection(books: bookModel,),
                const Expanded(child: SizedBox(height: 50)),
                const SmilirBookSection(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

