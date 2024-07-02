import 'cubit/counter_cubit.dart';
import 'cubit/counter_state.dart';
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
        debugShowCheckedModeBanner: false,
        home:HomePage()
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit/*اسم الكيوبت */, counterState/*اسم الاستات */>(
      builder: (context , state){
      return Scaffold(
                appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            
              Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          '${ BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: TextStyle(
                            fontSize: 120,
                          ),
                        ),
                        button(ontap:(){
                            BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 1);
                        },text:"Add 1 Point" ),
                        button(ontap:(){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 2);
                        },text:"Add 2 Point" ),
                        button(ontap:(){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 3);
                        },text:"Add 3 Point" )
                      ]
              ),
                                Container(
                    height: 500,
                    child: const VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                          Text(
                          '${ BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: TextStyle(
                            fontSize:120,
                          ),
                        ),
                        button(ontap:(){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 1);
                        },text:"Add 1 Point" ),
                        button(ontap:(){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 2);
                        },text:"Add 2 Point" ),
                        button(ontap:(){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 3);
                        },text:"Add 3 Point" )                      ]
              ),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button(text:"Reset" , ontap: (){
              BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "C", buttonNumber: 0);
                })
              ]
            )
          ],
        ),
      );
    //     Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.orange,
    //       title: const Text('Points Counter'),
    //     ),
    //     body: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Container(
    //           width: 70,
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               Container(
    //                 height: 500,
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                   children: [
    //                     const Text(
    //                       'Team A',
    //                       style: TextStyle(
    //                         fontSize: 32,
    //                       ),
    //                     ),
    //                     Text(
    //                       '${ BlocProvider.of<CounterCubit>(context).teamAPoints}',
    //                       style: TextStyle(
    //                         fontSize: 150,
    //                       ),
    //                     ),
    //                     ElevatedButton(
    //                       style: ElevatedButton.styleFrom(
    //                         padding: const EdgeInsets.all(8),
    //                         backgroundColor: Colors.orange,
    //                         minimumSize: const Size(150, 50),
    //                       ),
    //                       onPressed: () {
    //                         BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 1);
    //                         // setState(() {
    //                         //   teamAPoints++;
    //                         // });
    //                         // print(teamAPoints);
    //                       },
    //                       child: const Text(
    //                         'Add 1 Point ',
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ),
    //                     ElevatedButton(
    //                       style: ElevatedButton.styleFrom(
    //                         backgroundColor: Colors.orange,
    //                         // minimumSize: const Size(150, 50),
    //                       ),
    //                       onPressed: () {
    //                                                   BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 2);
    //                         // setState(() {
    //                         //   teamAPoints += 2;
    //                         // });
    //                       },
    //                       child: const Text(
    //                         'Add 2 Point',
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ),
    //                     ElevatedButton(
    //                       style: ElevatedButton.styleFrom(
    //                         backgroundColor: Colors.orange,
    //                         minimumSize: const Size(150, 50),
    //                       ),
    //                       onPressed: () {
    //                         BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 3);
    //                         // setState(() {
    //                         //   teamAPoints += 3;
    //                         // });
    //                       },
    //                       child: const Text(
    //                         'Add 3 Point ',
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Container(
    //                 height: 500,
    //                 child: const VerticalDivider(
    //                   indent: 50,
    //                   endIndent: 50,
    //                   color: Colors.grey,
    //                   thickness: 1,
    //                 ),
    //               ),
    //               Container(
    //                 height: 500,
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                   children: [
    //                     const Text(
    //                       'Team B',
    //                       style: TextStyle(
    //                         fontSize: 10,
    //                       ),
    //                     ),
    //                     Text(
    //                       '''${ BlocProvider.of<CounterCubit>(context).teamBPoints}
    //                       ''',
    //                       style: TextStyle(
    //                         fontSize: 100,
    //                       ),
    //                     ),
    //                     ElevatedButton(
    //                       style: ElevatedButton.styleFrom(
    //                         padding: const EdgeInsets.all(8),
    //                         backgroundColor: Colors.orange,
    //                         minimumSize: const Size(100, 50),
    //                       ),
    //                       onPressed: () {
    //                         BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 1);
    //                         // setState(() {});
    //                         // teamBPoints++;
    //                       },
    //                       child: const Text(
    //                         'Add 1 Point ',
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ),
    //                     ElevatedButton(
    //                       style: ElevatedButton.styleFrom(
    //                         backgroundColor: Colors.orange,
    //                         minimumSize: const Size(100, 50),
    //                       ),
    //                       onPressed: () {
    //                         BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 2);
    //                         // setState(() {});
    //                         // teamBPoints += 2;
    //                       },
    //                       child: const Text(
    //                         'Add 2 Point ',
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ),
    //                     ElevatedButton(
    //                       style: ElevatedButton.styleFrom(
    //                         backgroundColor: Colors.orange,
    //                         minimumSize: const Size(150, 50),
    //                       ),
    //                       onPressed: () {
    //                         BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 3);
    //                         // setState(() {
    //                         //   teamBPoints += 3;
    //                         // });
    //                       },
    //                       child: const Text(
    //                         'Add 3 Point ',
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         ElevatedButton(
    //           style: ElevatedButton.styleFrom(
    //             padding: const EdgeInsets.all(8),
    //             backgroundColor: Colors.orange,
    //             minimumSize: const Size(150, 50),
    //           ),
    //           onPressed: () {
    //           BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "C", buttonNumber: 0);
    //           },
    //           child: const Text(
    //             'Reset',
    //             style: TextStyle(
    //               fontSize: 18,
    //               color: Colors.black,
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );

    },
    listener: (context, state){
      if(state is CounterAIncrementState){
        teamApoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
      }
      // else if(state is CounterBIncrementState)
      else if(state is CounterBIncrementState){
        teamBpoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
      }else if (state is CounterResetState){
          teamApoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
          teamBpoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
      }
    });
      }
}

class button extends StatelessWidget {
    button({
    super.key,
      required this.text,
  required this.ontap,
  });
  String text;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    var onPressed;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: ontap,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
    );
  }
}
