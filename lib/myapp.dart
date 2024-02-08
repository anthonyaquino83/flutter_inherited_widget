import 'package:flutter/material.dart';
import 'package:inheritedwidgettutorial/counter_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CounterInheritedWidget(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'InheritedWidget Tutorial',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'InheritedWidget Tutorial'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counterInheritedWidget = CounterInheritedWidget.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterInheritedWidget.notifier!.value}',
              style: Theme.of(context).textTheme.headline4,
            )
            // ValueListenableBuilder(
            //     valueListenable: counterInheritedWidget.counter,
            //     builder: (context, value, child) {
            //       return Text(
            //         '${counterInheritedWidget.counter.value}',
            //         style: Theme.of(context).textTheme.headline4,
            //       );
            //     }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .dependOnInheritedWidgetOfExactType<CounterInheritedWidget>()!
              .incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
