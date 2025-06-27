import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const Icon(FontAwesomeIcons.solidStar , color: Color(0XFFFFDD4F),),
        const SizedBox(width: 6.3 ,),
        Text('4.8',style: Styles.textStyle19,),
        const SizedBox(width: 5,),
        Text('(2390)',style: Styles.textStyle17.copyWith(color: Color(0XFF707070)),),
      ],

    );
  }
}