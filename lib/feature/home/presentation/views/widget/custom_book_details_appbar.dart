
import 'package:bookly_app/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomBookDeitalsAppBar extends StatelessWidget {
  const CustomBookDeitalsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8 , bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIcon(onpressed: () {
            
          }, icon: Icons.close),
          CustomIcon(onpressed: () {
            
          }, icon: Icons.shopping_cart)
        ],
      ),
    ); 
  }
}


