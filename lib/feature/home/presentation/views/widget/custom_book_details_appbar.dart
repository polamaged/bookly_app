import 'package:bookly_app/core/widgets/custom_icon.dart';
import 'package:bookly_app/feature/library/data/Models/saved_book_model/saved_book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

class CustomBookDeitalsAppBar extends StatelessWidget {
  final SavedBookModel book;
  const CustomBookDeitalsAppBar({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    CustomIcon(
      onpressed: () {
        GoRouter.of(context).pop();
      },
      icon: Icons.close,
    ),
    CustomIcon(
      onpressed: () async {
        final box = Hive.box<SavedBookModel>('libraryBox');

        final index = box.values.toList().indexWhere(
          (b) => b.title == book.title && b.thumbnail == book.thumbnail,
        );

        if (index == -1) {
          await box.add(book);

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.black,
              content: Text('✅ Book saved to your library!', style: TextStyle(color: Colors.white)),
              behavior: SnackBarBehavior.floating,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.black,
              content: Text('ℹ️ Already saved at book number : $index' , style: TextStyle(color: Colors.white),),
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      },
      icon: Icons.add_shopping_cart,
    ),
        ],
      ),
    );
  }
}
