import 'package:bookly_app/core/utils/app_route.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/bookingrating.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.KBookDetailsView , extra: bookModel);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle26,
                    ),
                  ),
                  const SizedBox(height: 5),
                   Text(bookModel.volumeInfo.authors![0], style: Styles.textStyle17),
                  const SizedBox(height: 11),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle26.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                       BookRating(rating:bookModel.volumeInfo.pageCount! ,count: bookModel.volumeInfo.pageCount!,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
