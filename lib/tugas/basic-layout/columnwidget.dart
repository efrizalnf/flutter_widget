import 'package:flutter/material.dart';

class MyColumnWidget extends StatelessWidget {
  const MyColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              Text(
                "Baju",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(height: 20.0),
              Text(
                "Rp. 50.000",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
