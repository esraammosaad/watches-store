import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle fontSize10 = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );
  static TextStyle fontSize14 =  const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static TextStyle fontSize18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle fontSize20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle fontSize24 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle fontSize32 = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static TextStyle fontSize36 = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w600,
  );


}

BoxDecoration buildBoxDecorationColor() {
  return  BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white, Color(0xff464646), Colors.black.withOpacity(0.7)],
        stops: [0,.7,1]
    ),
  );
}
