import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:components_project/screens/state_management/components/bloc/counter_bloc.dart';

class BlocStateManagement extends StatefulWidget {
  const BlocStateManagement({super.key});

  @override
  State<BlocStateManagement> createState() => _BlocStateManagementState();
}

class _BlocStateManagementState extends State<BlocStateManagement> {
  int? counterValue;
  CounterBloc? counterBloc = CounterBloc();

  _incrementCounter(int value) {
    counterBloc!.add(CounterIncrementEvent(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter app - using bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              bloc: counterBloc,
              buildWhen: (previous, current) {
                return current is UpdatedCounterState;
              },
              builder: (context, state) {
                if (state is UpdatedCounterState) {
                  counterValue = state.counterValue;
                  return Text(
                    state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }
                return Text(
                  '--',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter(counterValue ?? 0);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
