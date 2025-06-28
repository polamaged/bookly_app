import 'package:bookly_app/feature/search/presenatation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}