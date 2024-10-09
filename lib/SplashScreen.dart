import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';





class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(
        const Duration(milliseconds: 700),
        () {
            Navigator.pushReplacementNamed(context, "HomePage");
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color.fromARGB(244, 253, 188, 114),
      child: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset('asset/152.png',
              height:300,
              width: 400,
            ),
          ),
          const Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Points Counter",style: TextStyle(
                inherit: false,
                fontSize:45,
                fontFamily: 'Sofadi One',
                  color: Colors.black),
                  ),
            ],
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}