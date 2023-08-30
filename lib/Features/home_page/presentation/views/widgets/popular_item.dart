import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        height: 173,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                fit: BoxFit.cover,
                'assets/images/watch.png',
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " LYMFHCH Men's Analog Sports Watch, LED .",
                      style: Styles.fontSize14.copyWith(
                        color: Colors.black,
                      ),
                      maxLines: 3,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RatingBar.builder(
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
                        color: Color(0xffFFD233),
                      ),
                      onRatingUpdate: (rating) {
                        //print(rating);
                      },
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 8, right: 8),
                      height: 44,
                      width: 102,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        r"392.99$",
                        style: Styles.fontSize20.copyWith(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
