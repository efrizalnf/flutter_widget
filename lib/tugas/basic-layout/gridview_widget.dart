import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic-form/helper.dart';

class MyGridViewWidget extends StatelessWidget {
  const MyGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "GridView Widget"),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 185 / 243,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                ...List.generate(
                  6,
                  (index) => Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset.zero,
                          blurRadius: 15.0,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
