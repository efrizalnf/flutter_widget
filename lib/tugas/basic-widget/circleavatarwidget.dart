import "package:flutter/material.dart";
import "package:project_flutter_pertama/tugas/basic-form/helper.dart";

class MyCircleAvatarWidget extends StatelessWidget {
  MyCircleAvatarWidget({super.key});

  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.amber,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "Circle Avatar"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  )),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    colors.length,
                    (index) => CircleAvatar(
                      radius: 30,
                      backgroundColor: colors[index],
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
