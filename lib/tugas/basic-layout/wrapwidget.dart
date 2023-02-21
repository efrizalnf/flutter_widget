import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic-form/helper.dart';

class MyWrapWidget extends StatelessWidget {
  MyWrapWidget({super.key});
  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.purple,
    Colors.deepPurple,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "Wrap Widget"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: colors.map((color) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 4.0,
                          ),
                          color: color,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset.zero,
                              blurRadius: 20,
                            )
                          ]),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
