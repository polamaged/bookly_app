import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      
      ],
    );
  }
}


