import 'package:bookly_app/core/utils/app_route.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 8 , bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo , height: 20,),
          const Spacer(),
        CustomIcon(onpressed: () {
          GoRouter.of(context).push(AppRoute.KSearchView);
          
        },icon:FontAwesomeIcons.magnifyingGlass,),
      
        ],
      ),
    );
  }
}

