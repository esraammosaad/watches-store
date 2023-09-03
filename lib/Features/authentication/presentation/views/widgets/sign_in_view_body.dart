import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/authentication/presentation/manager/auth_cubit/auth_state.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home_page/presentation/views/home_page_view.dart';
import '../../manager/auth_cubit/auth_cubit.dart';
import 'custom_sign_in_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePageView(),
              ),
            );
          } else if (state is AuthFailure) {
            showAwesomeDialog(
                context, state.dialogType, state.title, state.desc);
          }
        },
        child: const SignInForm(),
      ),
    );
  }
}
