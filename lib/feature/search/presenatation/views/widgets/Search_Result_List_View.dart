import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/feature/home/presentation/manger/search_books/search_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit,SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            },
          );
        }
        if (state is SearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else {
          return BestSellerListView();
        }
      },
    );
  }
}
