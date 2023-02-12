import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class StatelessStateful extends StatefulWidget {
  const StatelessStateful({super.key});

  @override
  State<StatelessStateful> createState() => _StatelessStatefulState();
}

class _StatelessStatefulState extends State<StatelessStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date time'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                TextWidget(text: 'Text Diambil dari Custom Widget'),
                SizedBox(height: 16),
                MyStatefulWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dateNow = 'Hari ini';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('date checker'),
        Text(dateNow),
        const SizedBox(height: 16),
        ElevatedButton(
            onPressed: () {
              String dateChange = DateTime.now().toIso8601String();
              setState(() {
                dateNow = dateChange;
              });
            },
            child: const Text('Change Date'))
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
