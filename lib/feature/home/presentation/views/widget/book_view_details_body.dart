import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/bookingrating.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/books_action.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_details_appbar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDeitalsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43),
          const Text('The Jungle Book', style: Styles.textStyle30),
          const SizedBox(height: 6),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle19.copyWith(fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 20),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 35),
           const BookAction(),
        ],
      ),
    );
  }
}
