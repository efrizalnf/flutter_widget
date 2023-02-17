import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic-form/helper.dart';

class MyExpandedWidget extends StatelessWidget {
  const MyExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "Expanded Widget"),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_ios_new),
                Expanded(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        style: TextStyle(fontSize: 16)),
                  ),
                )),
                Icon(
                  Icons.check,
                  color: Colors.amber,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
