import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const  HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
          CustomAppBar(),
          CustomListViewItem(),

      ],


    );
  }
}
