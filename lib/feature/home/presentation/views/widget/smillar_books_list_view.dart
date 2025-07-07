import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/feature/home/presentation/manger/similar_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmilarBooksListView extends StatelessWidget {
  const SmilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                   child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,),
                );
              },
            ),
          );
        }
       else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
