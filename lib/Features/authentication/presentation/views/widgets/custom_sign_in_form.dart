import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
import '../../manager/auth_cubit/auth_cubit.dart';
import 'custom_different_ways_to_sign_in_row.dart';
import 'custom_new_user_row.dart';
class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autoValidateMode,
      child: SingleChildScrollView(
        child: Container(
          decoration: buildBoxDecorationColor(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/splash.png",
                  height: MediaQuery.of(context).size.height * 0.5),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Column(
                  children: [
                    CustomTextFormField(
                      imgPath: "assets/images/black-male-user-symbol.png",
                      text: "Email",
                      obscureText: false,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {},
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomTextFormField(
                        controller: passwordController,
                        imgPath: "assets/images/key.png",
                        text: "Password",
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        onChanged: (value) {}),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: Text(
                              "forget password ?",
                              style: Styles.fontSize10,
                            ),
                            onTap: () async {
                              await FirebaseAuth.instance
                                  .sendPasswordResetEmail(
                                  email: emailController.text);
                            },
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: "sign in",
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          BlocProvider.of<AuthCubit>(context).loginUser(
                              email: emailController.text,
                              password: passwordController.text);
                        }
                        autoValidateMode=AutovalidateMode.always;
                        setState(() {

                        });
                      },
                    )
                  ],
                ),
              ),
              const CustomDifferentWaysToSignInRow(),
              const CustomNewUserRow()
            ],
          ),
        ),
      ),
    );
  }
}



