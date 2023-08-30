import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomCartBody extends StatefulWidget {
  const CustomCartBody({
    super.key,
  });

  @override
  State<CustomCartBody> createState() => _CustomCartBodyState();
}

class _CustomCartBodyState extends State<CustomCartBody> {
  int items = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19.0),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff929292),
          border: Border.all(
            color: Colors.black.withOpacity(0.25),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.5),
              ),
              height: double.infinity,
              width: MediaQuery.of(context).size.width * 0.3,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                //fit: BoxFit.fill,
                'assets/images/piaget.png',
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Piaget Polo Date watch",
                      style: Styles.fontSize20.copyWith(
                        color: Colors.black,
                      ),
                      maxLines: 3,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 37),
                          child: Text(
                            "500\$",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black.withOpacity(0.7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (items >= 1) {
                            items--;
                            setState(
                              () {},
                            );
                          }
                        },
                        child: Text(
                          "-",
                          style: Styles.fontSize20.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "$items",
                        style: Styles.fontSize20.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          items++;
                          setState(
                            () {},
                          );
                        },
                        child: Text(
                          "+",
                          style: Styles.fontSize20.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
