import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
import '../../manager/auth_cubit/auth_cubit.dart';
import 'custom_have_an_account_row.dart';
class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,

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

                        controller: confirmPasswordController,
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
                            _formKey.currentState!.save();
                            BlocProvider.of<AuthCubit>(context)
                                .registerUser(
                                email: emailController.text,
                                password: passwordController.text);
                          }
                          setState(() {

                          });
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const CustomHaveAnAccountRow()
              ],
            ),
          ),
        ),
      ),
    ) ;
  }
}

