import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic-form/helper.dart';

class MyAspectRatioWidget extends StatelessWidget {
  const MyAspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "Aspect Ratio"),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 100.0 / 160,
              child: Container(
                child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          controller: ScrollController(),
                          child: Row(
                            children: List.generate(
                              10,
                              (index) {
                                var item = {};
                                bool selected = index == 0;

                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 8.0,
                                  ),
                                  margin: const EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                    color:
                                        selected ? Colors.orange : Colors.grey,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Menu ${index + 1}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            title: const Text("John doe"),
                            subtitle: const Text("john.doe@gmail.com"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
