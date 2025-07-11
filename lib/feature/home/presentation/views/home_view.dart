import 'package:bookly_app/feature/home/presentation/views/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: SafeArea(child: HomeViewBody()),
      bottomNavigationBar: BottomNavigateBar(),
    );
  }
}

class BottomNavigateBar extends StatefulWidget {
  const BottomNavigateBar({super.key});

  @override
  State<BottomNavigateBar> createState() => _BottomNavigateBarState();
}

class _BottomNavigateBarState extends State<BottomNavigateBar> {
int selected_index = 0; 

void navigationbottombar(int index)
{
  setState(() {
    selected_index = index;
  });
}

List<Widget>pages = [
  SafeArea(child: HomeViewBody()),
];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          currentIndex: selected_index,
          onTap: navigationbottombar,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
           unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home' ),
            BottomNavigationBarItem(icon: Icon(Icons.library_books) , label: 'Library'),
          ],
          
        ),
      ),
    );
  }
}