import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.image, required this.title,this.subTitle,required this.style, required this.onTap})
      : super(key: key);
 final String title;
  final String image;
  final Widget ? subTitle;
  final TextStyle style;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
      ),
    );
  }
}
