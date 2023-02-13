import 'package:basketball_counter_app/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>
{
  int teamAPoints = 0;

  int teamBPoints = 0;

  CounterCubit(CounterState initialState) : super(initialState);

  void TeamIncrement({required String team, required int buttonNumber})
  {
    if (team == 'A')
    {
      teamAPoints += buttonNumber;
      emit(CounterTeamAState());
    }else{
      teamBPoints += buttonNumber;
      emit(CounterTeamBState());
    }
  }
}