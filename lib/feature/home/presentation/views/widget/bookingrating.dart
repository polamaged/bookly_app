import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count,
  });

  final MainAxisAlignment mainAxisAlignment;
  final int rating ;
  final int count ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color(0XFFFFDD4F),
        ),
        const SizedBox(width: 6.3),
        Text(rating.toString(), style: Styles.textStyle19),
        const SizedBox(width: 5),
        // Text(
        //   count.toString(),
        //   style: Styles.textStyle17.copyWith(color: Color(0XFF707070)),
        // ),
      ],
    );
  }
}
