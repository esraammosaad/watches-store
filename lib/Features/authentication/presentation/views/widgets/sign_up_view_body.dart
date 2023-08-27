import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
import '../../../../home_page/presentation/views/home_page_view.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController userNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            decoration: buildBoxDecorationColor(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 48),
                  child: Text("Sign Up",
                      style: Styles.fontSize32.copyWith(color: Colors.black)),
                ),
                const SizedBox(
                  height: 57,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: emailController,
                        text: "Email address",
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
                        onChanged: (value) {},
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomTextFormField(
                        controller: passwordController,
                        text: "Password",
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
                        onChanged: (value) {},
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      CustomButton(
                        text: "sign Up",
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) =>
                                       HomePageView()));
                          }
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 190,
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
    );
  }
}
