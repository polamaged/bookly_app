import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children:const[
          CustomBookDeitalsAppBar(),
        ],
      ),
    );
  }
}
