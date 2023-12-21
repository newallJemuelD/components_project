import 'package:flutter/material.dart';
import 'counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterModel _counterModel;

  CounterViewModel(this._counterModel);

  int get count => _counterModel.count;

  void increment() {
    _counterModel.count++;
    notifyListeners();
  }

  void decrement() {
    _counterModel.count--;
    notifyListeners();
  }
}
