import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   RatingBar.builder(
      initialRating: 4,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 20,
      unratedColor: const Color(0x1B1B1BB2),
      itemPadding: const EdgeInsets.only(right: 2.0),
      itemBuilder: (context, _) => const FaIcon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFD233)),
      onRatingUpdate: (rating) {
        //print(rating);
      },
    );
  }
}
