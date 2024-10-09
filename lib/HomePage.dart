import 'reuseableWidgets.dart';
import 'cubit/counter_cubit.dart';
import 'cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit/*اسم الكيوبت */, counterState/*اسم الاستات */>(
      builder: (context , state){
      return Scaffold(
        //         appBar: AppBar(
        //   backgroundColor: Colors.orange,
        //   title: const Text('Points Counter'),
        // ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: const CustomAppBar(),
            ),
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
                          style: const TextStyle(
                            fontSize: 120,
                          ),
                        ),
                        CustomButton(ontap:(){
                            BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 1);
                        },text:"Add 1 Point" ),
                        CustomButton(ontap:(){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 2);
                        },text:"Add 2 Point" ),
                        CustomButton(ontap:(){
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
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                          Text(
                          '${ BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: const TextStyle(
                            fontSize:120,
                          ),
                        ),
                        CustomButton(ontap:(){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 1);
                        },text:"Add 1 Point" ),
                        CustomButton(ontap:(){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 2);
                        },text:"Add 2 Point" ),
                        CustomButton(ontap:(){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 3);
                        },text:"Add 3 Point" )                      ]
              ),
            ],),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(text:"Reset" , ontap: (){
                BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "C", buttonNumber: 0);
                  })
                  
                ]
              ),
            )
          ],
        ),
      );
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