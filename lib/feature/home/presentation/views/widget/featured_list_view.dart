import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/feature/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: const CustomBookImage(),
                );
              },
            ),
          );
        }else if (state is FeaturedBooksFailure)
        {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else 
        {
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
