import 'package:flutter/cupertino.dart';

class CounterInheritedWidget extends InheritedNotifier<ValueNotifier<int>> {
  CounterInheritedWidget({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child, notifier: ValueNotifier(0));

  static CounterInheritedWidget of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>()!;

  incrementCounter() {
    notifier!.value++;
  }
}
