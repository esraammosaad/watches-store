import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:watsh_store/Features/authentication/presentation/manager/auth_cubit/auth_state.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
import '../../../../home_page/presentation/views/home_page_view.dart';
import '../../manager/auth_cubit/auth_cubit.dart';
import '../sign_up_view.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({Key? key}) : super(key: key);

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

// final FirebaseAuth _auth = FirebaseAuth.instance;
// final GoogleSignIn _googleSignIn = GoogleSignIn();
  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Future signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const HomePageView(),
        ),
        (route) => false);
  }

  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => HomePageView(),
        ),
        (route) => false);
  }

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
        child: Form(
          key: _formKey,
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
                              BlocProvider.of<AuthCubit>(context).loginUser(
                                  email: emailController.text,
                                  password: passwordController.text);
                            }
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.075,
                        vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Image.asset("assets/images/google.png"),
                          onTap: () {
                            signInWithGoogle();
                          },
                        ),
                        GestureDetector(
                            onTap: () {
                              signInWithFacebook();
                            },
                            child: Image.asset("assets/images/facebook.png")),
                        Image.asset("assets/images/gmail.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.075),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "New User ? ",
                          style: Styles.fontSize18,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpView(),
                              )),
                          child: Text(
                            "Sign Up",
                            style: Styles.fontSize18,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

// Future<void> signInWithGoogle() async {
//   GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
//   GoogleSignInAuthentication googleSignInAuthentication =await googleSignInAccount!.authentication;
//   AuthCredential authCredential = GoogleAuthProvider.credential(accessToken: googleSignInAuthentication.accessToken, idToken: googleSignInAuthentication.idToken);
//   await _auth.signInWithCredential(authCredential);
//
// }
}
