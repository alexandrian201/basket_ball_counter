import 'HomePage.dart';
import 'SplashScreen.dart';
import 'cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
                      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Sofadi One',
      ),
        debugShowCheckedModeBanner: false,
        home:const SplashScreen(),
        routes: {
        HomePage.routeName: (context) => HomePage(),
        SplashScreen.routeName: (context) => const SplashScreen(),}
      ),
    );
  }
}
