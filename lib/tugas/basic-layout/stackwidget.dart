import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic-form/helper.dart';

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "Stack Widget"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.shopping_cart_checkout,
                    size: 50.0,
                  ),
                  Positioned(
                    top: -4.0,
                    right: -4.0,
                    child: CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.green,
                      child: Text(
                        "8",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
