import 'package:bookly_app/feature/library/presentation/view/widget/Library_view_body.dart';
import 'package:flutter/material.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
   return const Scaffold(body: SafeArea(child: LibraryViewBody()));
  }
}