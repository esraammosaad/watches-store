import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
import '../../../../home_page/presentation/views/home_page_view.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        style: Styles.fontSize32.copyWith(color: Colors.black)),
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
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePageView(),
                                ),
                              );
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
    );
  }
}
