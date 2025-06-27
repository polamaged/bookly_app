import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        CustomIcon(),
      
        ],
      ),
    );
  }
}


class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
        
      ),
      child: IconButton(onPressed: () {
        
      }, icon:Icon(FontAwesomeIcons.magnifyingGlass,size: 24, )),

    );
  }
}