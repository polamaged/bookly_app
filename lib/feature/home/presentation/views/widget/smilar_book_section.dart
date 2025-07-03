import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/smillar_books_list_view.dart';
import 'package:flutter/material.dart';

class SmilirBookSection extends StatelessWidget {
  const SmilirBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'You can also like',
            style: Styles.textStyle17.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16),
        SmilarBooksListView(),
      ],
    );
  }
}
