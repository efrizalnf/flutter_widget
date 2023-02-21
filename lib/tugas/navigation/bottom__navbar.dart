import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:project_flutter_pertama/tugas/basic-form/helper.dart";

class MyBottomNav extends StatefulWidget {
  MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  final List<Widget> list = const [
    Text('Home'),
    Text('Cart'),
    Text('Favorite'),
    Text('User'),
  ];

  int _selectedIndex = 0;

  List<dynamic> menuItems = [
    {
      'icon': 'assets/icons/home_.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/cart_.svg',
      'label': 'Cart',
    },
    {
      'icon': 'assets/icons/favorite.svg',
      'label': 'Favorite',
    },
    {
      'icon': 'assets/icons/profile_.svg',
      'label': 'Profile',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleValue: "BottomNav"),
      body: Center(
        child: list[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: menuItems.map((index) {
          return BottomNavigationBarItem(
            activeIcon: Container(
              width: double.infinity,
              height: 36,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.amber[800],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SvgPicture.asset(
                index['icon'],
                color: Colors.black,
              ),
            ),
            icon: SvgPicture.asset(
              index['icon'],
              color: Colors.amber,
            ),
            label: index['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        onTap: _onItemTapped,
        iconSize: 18,
      ),
    );
  }
}
