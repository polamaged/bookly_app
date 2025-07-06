import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/bookingrating.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/books_action.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          //child: const CustomBookImage(),
        ),
        const SizedBox(height: 43),
        const Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 6),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle19.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 20),
        const BookRating(
          rating: 5 , count: 250,
          mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 35),
        const BookAction(),
      ],
    );
  }
}
