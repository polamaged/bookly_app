import 'package:bookly_app/feature/home/presentation/views/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const  HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
          CustomAppBar(),

      ],


    );
  }
}

