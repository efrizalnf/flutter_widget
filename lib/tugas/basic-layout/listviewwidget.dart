// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic-form/helper.dart';

class MyListViewWidget extends StatelessWidget {
  MyListViewWidget({Key? key}) : super(key: key);
  final List<String> category = [
    'All',
    'Living Room',
    'Bed Room',
    'Dining Room',
    'Kitchen'
        'All',
    'Living Room',
    'Bed Room',
    'Dining Room',
    'Kitchen'
        'All',
    'Living Room',
    'Bed Room',
    'Dining Room',
    'Kitchen'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleValue: "Listview Widget"),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  category.length,
                  (index) {
                    return GestureDetector(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 25,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          category[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                children: List.generate(category.length, (index) {
                  return GestureDetector(
                    child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.greenAccent,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 9,
                          horizontal: 24,
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 4,
                        ),
                        child: Text(
                          category[index],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  );
                }),
              ),
            ),
            Expanded(
              child: ListView(
                children: List.generate(category.length, (index) {
                  return GestureDetector(
                    child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.greenAccent,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 9,
                          horizontal: 24,
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 4,
                        ),
                        child: Text(
                          category[index],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
