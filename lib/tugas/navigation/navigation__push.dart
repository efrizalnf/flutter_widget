import "package:flutter/material.dart";
import "package:project_flutter_pertama/tugas/basic-form/helper.dart";
import "package:project_flutter_pertama/tugas/navigation/navigation__pop.dart";

class MyNavPushWidget extends StatelessWidget {
  const MyNavPushWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "Push Navigator"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400],
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const MyNavPopWidget();
                  }));
                },
                child: const Text("Selanjutnya"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
