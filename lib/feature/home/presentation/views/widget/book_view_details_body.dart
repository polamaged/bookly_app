import 'package:bookly_app/feature/home/presentation/views/widget/books_details_section.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_details_appbar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/smilar_book_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: const [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDeitalsAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 50)),
                SmilirBookSection(),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
