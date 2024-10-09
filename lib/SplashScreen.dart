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
        const Duration(seconds: 20),
        () {
            Navigator.pushReplacementNamed(context, "HomePage");
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromARGB(255, 0, 0, 0),
      child: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset('asset/000.png',
              height:400,
              width: 600,
            ),
          ),
          const Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Points Counter",style: TextStyle(
                inherit: false,
                fontSize:35,
                fontFamily: 'Sofadi One',
                  color: Color.fromARGB(255, 231, 123, 31)),
                  ),
            ],
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}