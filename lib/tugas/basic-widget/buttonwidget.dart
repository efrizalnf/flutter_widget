import "package:flutter/material.dart";
import "package:project_flutter_pertama/tugas/basic-form/helper.dart";

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "Button Widget"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadowColor: Colors.amberAccent[100],
                  elevation: 4.0,
                ),
                onPressed: () {},
                child: Text(
                  "Add To Chart".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
