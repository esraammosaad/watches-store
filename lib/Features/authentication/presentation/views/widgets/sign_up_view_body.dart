import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:watsh_store/Features/authentication/presentation/manager/auth_cubit/auth_state.dart';
import 'package:watsh_store/Features/authentication/presentation/views/sign_in_view.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            //showSnackBar(context, state.errMessage);
            showAwesomeDialog(
                context, state.dialogType, state.title, state.desc);
          }
        },
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              decoration: buildBoxDecorationColor(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.075),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.06),
                      child: Text("Sign Up",
                          style:
                              Styles.fontSize32.copyWith(color: Colors.black)),
                    ),
                    const SizedBox(
                      height: 57,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: Column(
                        children: [
                          CustomTextFormField(
                            controller: emailController,
                            text: "Email address",
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {},
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextFormField(
                            controller: userNameController,
                            text: "User Name",
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {},
                            obscureText: false,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextFormField(
                            controller: passwordController,
                            text: "Password",
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {},
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextFormField(
                            controller: passwordController,
                            text: "Confirm Password",
                            textInputAction: TextInputAction.done,
                            onChanged: (value) {},
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          CustomButton(
                            text: "sign Up",
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                BlocProvider.of<AuthCubit>(context)
                                    .registerUser(
                                        email: emailController.text,
                                        password: passwordController.text);
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already Have Account ? ",
                          style: Styles.fontSize18,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Text(
                            "Sign In",
                            style: Styles.fontSize18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
