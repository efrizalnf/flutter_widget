import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/meet_2/ch4topic2/navigation/drawer_widget.dart';
import 'package:project_flutter_pertama/meet_2/ch4topic2/navigation/navigation_pop.dart';
import 'package:project_flutter_pertama/meet_2/ch4topic2/navigation/navigation_push.dart';
import 'package:project_flutter_pertama/meet_2/ch4topic2/navigation/sliver_widget.dart';
import 'package:project_flutter_pertama/tugas/navigation/bottom__navbar.dart';

import 'meet_2/ch4topic2/navigation/bottom_navbar.dart';
import 'tugas/basic-widget/textwidget.dart';
import 'tugas/navigation/drawer__widget.dart';
import 'tugas/navigation/navigation__push.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task FIC2',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyNavPushWidget(),
    );
  }
}

class ChangeTimeWidget extends StatefulWidget {
  const ChangeTimeWidget({super.key});

  @override
  State<ChangeTimeWidget> createState() => _ChangeTimeWidgetState();
}

class _ChangeTimeWidgetState extends State<ChangeTimeWidget> {
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Time: $time'),
        ElevatedButton(
          onPressed: () {
            time = DateTime.now();
            setState(() {});
          },
          child: const Text('Update Time'),
        ),
      ],
    );
  }
}

class ShowTextWidget extends StatelessWidget {
  final String text;
  const ShowTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
