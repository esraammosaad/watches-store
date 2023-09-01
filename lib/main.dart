import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/home_page/presentation/views/home_page_view.dart';
import 'Features/authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'Features/authentication/presentation/views/splash_view.dart';
import 'Features/home_page/presentation/manager/cart_cubit/cart_cubit.dart';
import 'Features/home_page/presentation/manager/favorite_cubit/favorite_cubit.dart';
import 'Features/home_page/presentation/manager/home_cubit/home_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),

            BlocProvider(
              create: (context) => CartCubit(),
            ),
        BlocProvider(
          create: (context) => FavoriteCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        home: (FirebaseAuth.instance.currentUser != null && FirebaseAuth.instance.currentUser!.emailVerified)? const HomePageView() :const SplashView() ,
      ),
    );
  }
}
