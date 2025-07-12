import 'package:bookly_app/feature/library/data/Models/saved_book_model/saved_book_model.dart';
import 'package:bookly_app/feature/library/presentation/view/widget/custom_library_appbar.dart';
import 'package:bookly_app/feature/library/presentation/view/widget/saved_book_list_item.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class LibraryViewBody extends StatelessWidget {
  const LibraryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
     final Box<SavedBookModel> box = Hive.box<SavedBookModel>('libraryBox');
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 20, left: 16),
            child: CustomLibraryAppBar(),
          ),
          Expanded(
            child: ValueListenableBuilder<Box<SavedBookModel>>(
              valueListenable: box.listenable(),
              builder: (context, value, _) {
                if(box.isEmpty)
                {
                  return const Center(
                    child: Text('📦 Your library is empty',style:TextStyle(fontSize: 24, color: Colors.white54),),
                  );
                }
                else
                {
                  final books = box.values.toList();
                  return ListView.builder(
                    itemCount: books.length,
                    itemBuilder:(context, index) {
                      return SavedBookListItem(book: books[index]);
                    }, );
                }
                 // Placeholder
              },
            ),
          ),
        ],
    );

  }
}