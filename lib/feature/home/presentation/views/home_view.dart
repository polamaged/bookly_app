import 'package:bookly_app/feature/home/presentation/views/bottom_navigation_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/home_view_body.dart';
import 'package:bookly_app/feature/library/presentation/view/library_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selected_index=0;

  Widget get_pages(int index)
  {
     switch (index) {
      case 0:
        return SafeArea(child: HomeViewBody());
      case 1:
        return SafeArea(child: const LibraryView());
      default:
        return SafeArea(child: HomeViewBody());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: get_pages(selected_index),
      bottomNavigationBar: BottomNavigateBar(
        selectedIndex: selected_index,
        onItemTapped: (value) {
          setState(() {
            selected_index = value;
          });
        },
      ),
    );
  }
}
