import 'package:bookly_app/core/utils/styles.dart';

import 'package:bookly_app/feature/search/presenatation/views/custom_search_text_field.dart';
import 'package:bookly_app/feature/search/presenatation/views/widgets/Search_Result_List_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          const SizedBox(height: 16),
          Text('Search Result', style: Styles.textStyle22),
          const SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
