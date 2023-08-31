import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watsh_store/Features/authentication/presentation/manager/cart_cubit/cart_cubit.dart';
import 'Features/authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'Features/authentication/presentation/manager/favorite_cubit/favorite_cubit.dart';
import 'Features/authentication/presentation/views/splash_view.dart';

void main() {
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
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        home: const SplashView(),
      ),
    );
  }
}
