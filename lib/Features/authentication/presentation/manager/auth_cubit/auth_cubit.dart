import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({this.emailController, this.passwordController})
      : super(AuthInitial());
  TextEditingController? emailController;
  TextEditingController? passwordController;

  Future<void> registerUser(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      FirebaseAuth.instance.currentUser!.sendEmailVerification();
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(AuthFailure(
            dialogType: DialogType.error,
            title: 'Error',
            desc: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(AuthFailure(
            dialogType: DialogType.error,
            title: 'Error',
            desc: 'The account already exists for that email.'));
      }
    } catch (e) {}
  }

  Future<void> loginUser(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (credential.user!.emailVerified) {
        emit(AuthSuccess());
      } else {
        emit(AuthFailure(
            dialogType: DialogType.info,
            title: 'Info',
            desc: 'Please verify your email address.'));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(AuthFailure(
            dialogType: DialogType.error,
            title: 'Error',
            desc: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(AuthFailure(
            dialogType: DialogType.error,
            title: 'Error',
            desc: 'Wrong password provided for that user.'));
      }
    }
  }
}
