import "package:flutter/material.dart";
import "package:project_flutter_pertama/tugas/basic-form/helper.dart";

class MyDrawerWIdget extends StatelessWidget {
  const MyDrawerWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "Drawer"),
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                color: Colors.green[400],
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  accountName: Text(
                    "Asep",
                    style: TextStyle(
                      color: Colors.blue[900],
                    ),
                  ),
                  accountEmail: Text(
                    "asep@gmail.com",
                    style: TextStyle(
                      color: Colors.green[400],
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                title: const Text("John doe"),
                subtitle: const Text("john.doe@gmail.com"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.share),
                minLeadingWidth: 0.0,
                title: const Text("John doe"),
                trailing: const SizedBox(
                  width: 50,
                  child: Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}
