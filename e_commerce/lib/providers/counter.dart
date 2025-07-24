import 'package:flutter/material.dart';

class CounterState {
  int _value = 0;

  void increment() {
    _value++;
  }

  void decrement() {
    if (_value > 0) {
      _value--;
    }
  }

  int get value => _value;
  
}


class CounterProvider extends InheritedWidget {
  final CounterState state = CounterState();
  CounterProvider({required super.child});

  
  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>()!;
  }

  
  
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
  
}