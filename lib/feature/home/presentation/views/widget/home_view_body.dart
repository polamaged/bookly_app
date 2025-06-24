import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/featured_list_view.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const  HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(height: 50 ,),
            Text('Best Seller' , style: Styles.titleMedium,),
      
      
        ],
      
      
      ),
    );
  }
}

