
import 'package:flutter/material.dart';

class CustomBookDeitalsAppBar extends StatelessWidget {
  const CustomBookDeitalsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {
            
          }, icon:const Icon(Icons.close)),
          IconButton(onPressed: () {
            
          }, icon:const Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }
}


