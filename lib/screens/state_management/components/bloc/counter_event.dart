part of 'counter_bloc.dart';

abstract class CounterEvent {}

class CounterIncrementEvent extends CounterEvent {
  int counterValue;
  CounterIncrementEvent(this.counterValue);
}
