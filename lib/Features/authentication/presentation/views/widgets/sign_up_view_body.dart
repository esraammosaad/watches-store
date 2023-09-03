import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:watsh_store/Features/authentication/presentation/manager/auth_cubit/auth_state.dart';
import 'package:watsh_store/Features/authentication/presentation/views/sign_in_view.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInView(),
              ),
            );
          } else if (state is AuthFailure) {
            showAwesomeDialog(
                context, state.dialogType, state.title, state.desc);
          }
        },
        child: const SignUpForm(),
      ),
    );
  }
}
