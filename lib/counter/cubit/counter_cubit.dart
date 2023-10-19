import 'package:flutter_bloc/flutter_bloc.dart';

//int is the type of state which the Cubit will be managing.
class CounterCubit extends Cubit<int> {

  //initial state to 0
  CounterCubit() : super(0);

  //Each Cubit has the ability to output a new state via emit.

  //This methods can be called externally to notify the CounterCubit to increment and decrement its state.
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);

}