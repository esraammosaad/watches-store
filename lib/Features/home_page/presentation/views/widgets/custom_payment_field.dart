import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomPaymentField extends StatelessWidget {
  CustomPaymentField(
      {Key? key,
      required this.label,
      required this.hint,
      required this.textInputAction})
      : super(key: key);
  String label;
  String hint;
  TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(),
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a valid value';
        }
        return null;
      },
      keyboardType: TextInputType.number,
      textInputAction: textInputAction,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintStyle: Styles.fontSize18
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        hintText: hint,
        label: Text(label),
        labelStyle: Styles.fontSize20.copyWith(color: Colors.grey),
        errorStyle: const TextStyle(color: Colors.black),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
