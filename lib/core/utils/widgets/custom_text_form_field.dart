import 'package:flutter/material.dart';
import '../styles.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.text,
      this.imgPath,
      this.keyboardType,
      required this.obscureText,
      required this.onChanged,
      required this.controller,
      required this.textInputAction,  });

  final String text;
  final String? imgPath;
  final TextInputAction? textInputAction;


  final bool obscureText;
  final TextInputType? keyboardType;
  final void Function(String) onChanged;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      //width: 310,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        textInputAction: textInputAction,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a valid value';
          }
          return null;
        },
        obscureText: obscureText,
        keyboardType: keyboardType,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintStyle: Styles.fontSize18.copyWith(
            color: const Color(0xFFFFFDFD).withOpacity(
              0.6,
            ),
          ),
          hintText: text,
          prefixIcon: imgPath == null
              ? null
              : Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, bottom: 8, top: 8, right: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        imgPath!,
                        height: 32,
                        width: 27,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 2,
                        height: 32,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
          filled: true,
          fillColor: const Color(0xffF6F6F6).withOpacity(0.2),
          errorStyle: const TextStyle(color: Colors.black),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: const BorderSide(color: Colors.black),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
