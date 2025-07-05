import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class SmilarBooksListView extends StatelessWidget {
  const SmilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
           // child: const CustomBookImage(),
          );
        },
      ),
    );
  }
}
