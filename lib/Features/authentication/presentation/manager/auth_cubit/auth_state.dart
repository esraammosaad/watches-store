import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}
class AuthSuccess extends AuthState {}

class AuthFailure extends AuthState {
  // final String errMessage;
  final String desc;
  final DialogType dialogType;
  final String title;

  AuthFailure({
    required this.desc,
    required this.dialogType,
    required this.title,
  });
}
