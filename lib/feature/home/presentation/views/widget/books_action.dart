import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children:  [
         const Expanded(
            child: CustomButtom(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButtom(onpressed: () async {
              Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
               if (await canLaunchUrl(uri)) {
                   await launchUrl(uri);
                }
               },
              text: 'Free Preview ',
              backgroundColor: Color(0XFFEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
