import 'HomePage.dart';
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
        home:HomePage()
      ),
    );
  }
}



// class button extends StatelessWidget {
//     button({
//     super.key,
//       required this.text,
//   required this.ontap,
//   });
//   String text;
//   VoidCallback ontap;
//   @override
//   Widget build(BuildContext context) {
//     var onPressed;
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.all(8),
//                   backgroundColor: Colors.orange,
//                   minimumSize: const Size(150, 50),
//                 ),
//                 onPressed: ontap,
//                 child: Text(
//                   text,
//                   style: const TextStyle(
//                     fontSize: 18,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//     );
//   }
// }
