import 'package:bookly_app/feature/home/presentation/views/widget/book_view_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookViewDetailsBody(),
    );
  }
}