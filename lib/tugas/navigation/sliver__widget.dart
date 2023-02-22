import "package:flutter/material.dart";
import "package:project_flutter_pertama/tugas/basic-form/helper.dart";

class MySliverWidget extends StatefulWidget {
  const MySliverWidget({super.key});

  @override
  State<MySliverWidget> createState() => _MySliverWidgetState();
}

List<Map> products = [
  {
    "id": 1,
    "photo":
        "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "product_name": "Frenzy Pizza",
    "price": 25,
    "category": "Food",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 2,
    "photo":
        "https://i.ibb.co/mHtmhmP/photo-1521305916504-4a1121188589-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "product_name": "Beef Burger",
    "price": 22,
    "category": "Food",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 3,
    "photo":
        "https://images.unsplash.com/photo-1625869016774-3a92be2ae2cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "product_name": "Seperait",
    "price": 33,
    "category": "Drink",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 4,
    "photo":
        "https://images.unsplash.com/photo-1578160112054-954a67602b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
    "product_name": "Fried Rice",
    "price": 31,
    "category": "Food",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 5,
    "photo":
        "https://i.ibb.co/mHCx9Nj/photo-1517487881594-2787fef5ebf7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "product_name": "Terrano Milk",
    "price": 32,
    "category": "Drink",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 6,
    "photo":
        "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "product_name": "Fried Chicken",
    "price": 49,
    "category": "Food",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 7,
    "photo":
        "https://images.unsplash.com/photo-1525385133512-2f3bdd039054?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
    "product_name": "Mango Juice",
    "price": 62,
    "category": "Drink",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 8,
    "photo":
        "https://images.unsplash.com/photo-1600271886742-f049cd451bba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "product_name": "Orange Juice",
    "price": 56,
    "category": "Drink",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 9,
    "photo":
        "https://images.unsplash.com/photo-1604085792782-8d92f276d7d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
    "product_name": "Avocado Juice",
    "price": 56,
    "category": "Drink",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 10,
    "photo":
        "https://images.unsplash.com/photo-1622240506921-042a4e71c172?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "product_name": "Puncak Coffe",
    "price": 56,
    "category": "Drink",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 11,
    "photo":
        "https://images.unsplash.com/photo-1594631252845-29fc4cc8cde9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "product_name": "Silvana Tea",
    "price": 56,
    "category": "Drink",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
  {
    "id": 12,
    "photo":
        "https://images.unsplash.com/photo-1576092768241-dec231879fc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "product_name": "Paradox Tea",
    "price": 56,
    "category": "Drink",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  },
];

final List<String> categories = [
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

SliverList _getSlivers(
    List myList, String category, String photo, BuildContext context) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return buildRow(myList[index]["product_name"], myList[index][category],
            myList[index][photo]);
      },
      childCount: myList.length,
    ),
  );
}

buildRow(String product, String price, String photo) {
  return Card(
    child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28.0,
              backgroundImage: NetworkImage(
                photo,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 14.0),
                ),
              ],
            ),
          ],
        )),
  );
}

class _MySliverWidgetState extends State<MySliverWidget> {
  bool pinned = true;
  bool snap = false;
  bool floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppbar(titleValue: "Sliver Widget"),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 0,
            // leading: Container(),

            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              // centerTitle: true,
              titlePadding: const EdgeInsets.symmetric(horizontal: 3),
              title: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Sliver App Bar",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              background: Image.network(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
                width: 64.0,
                height: 64.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          _getSlivers(products, "category", "photo", context)
        ],
      ),
    );
  }
}
