import 'counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterCubit extends Cubit<counterState>
{
  CounterCubit():super(CounterAIncrementState());
  //  CounterCubit(super.initialState);
    
  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamIncrement({required String team,required int buttonNumber}){
    if(team=="A"){teamAPoints+= buttonNumber;
    emit(CounterAIncrementState());}else if (team=="B"){
    teamBPoints+= buttonNumber;
    emit(CounterBIncrementState());
    }else{
      teamAPoints=0;
      teamBPoints=0;
      emit(CounterResetState());
    }
  }
}