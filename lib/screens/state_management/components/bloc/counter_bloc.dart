import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;

  CounterBloc() : super(InitialCounterState()) {
    on<CounterIncrementEvent>(_onIncrementButtonClick);
  }

  _onIncrementButtonClick(
      CounterIncrementEvent event, Emitter<CounterState> emit) {
    counter++;
    emit(UpdatedCounterState(counter));
  }
}
