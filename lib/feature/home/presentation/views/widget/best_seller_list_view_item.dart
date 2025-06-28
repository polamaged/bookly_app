import 'package:bookly_app/core/utils/app_route.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/bookingrating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.KBookDetailsView);
      },
      child: SizedBox( 
        height: 150,
        child: Row( 
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.TestImage),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width *.5,
                    child: const Text(
                      'Harry Potter and the Goblet of Fire ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle26,
                    )),
                    const SizedBox(height: 5,),
                   const Text('J.K. Rowling' , style: Styles.textStyle17,),
                   const SizedBox(height: 11,),
                   Row(
                    children: [
                      Text('19.99 €',style: Styles.textStyle26.copyWith(fontWeight: FontWeight.bold),),
                      const Spacer(), 
                     const BookRating(),
                    ],
                   )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


