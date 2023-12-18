part of 'counter_bloc.dart';

abstract class CounterState {}

class InitialCounterState extends CounterState {
  InitialCounterState();
}

class UpdatedCounterState extends CounterState {
  int counterValue;
  UpdatedCounterState(this.counterValue);
}
