import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomCard extends StatelessWidget {
  CustomCard({Key? key, required this.image, required this.title,this.subTitle,required this.style})
      : super(key: key);
  String title;
  String image;
  Widget ? subTitle;
  TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shadowColor: const Color(0xFF929292),
      color: const Color(0xFF929292),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: Color(0xFF929292),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          title,
          style: style,
        ),
        leading: Image.asset(image),
        subtitle: subTitle,
      ),
    );
  }
}
