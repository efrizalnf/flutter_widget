import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic-form/helper.dart';

class MyPaddingWidget extends StatelessWidget {
  const MyPaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "Padding Widget"),
      body: Container(
        height: 400,
        width: 300,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.blue[700]!,
          border: Border.all(
            width: 5.0,
            color: Colors.amber[700]!,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 50,
                bottom: 150,
              ),
              child: Text(
                "Open Mind In bRowser",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
