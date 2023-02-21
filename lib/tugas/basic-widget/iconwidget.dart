import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic-form/helper.dart';

class MyIconWidget extends StatelessWidget {
  const MyIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleValue: "iCon Widget"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Icon(
                Icons.ac_unit,
                size: 36.0,
                color: Colors.green[600]!,
              ),
              Icon(
                Icons.access_alarm_sharp,
                size: 36.0,
                color: Colors.yellow[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
