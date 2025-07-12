import 'package:bookly_app/feature/search/presenatation/manger/search_books/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextField(
        onChanged: (value) {
          var getsearchcubit = BlocProvider.of<SearchBooksCubit>(context);
          getsearchcubit.fetchSearchBooks(bookname: value);
        },
        decoration: InputDecoration(
          enabledBorder: buildoutlineinputborder(),
          focusedBorder: buildoutlineinputborder(),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildoutlineinputborder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
