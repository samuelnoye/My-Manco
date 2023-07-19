import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> muenuTitles = [
      'Home',
      'BMI Calculator',
      'Weather',
      'Training'
    ];
    List<Widget> menuItems = [];
    menuItems.add(const DrawerHeader(
        decoration: BoxDecoration(color: Colors.white30),
        child: Text('MyMacho',
            style: TextStyle(color: Colors.black, fontSize: 20))));
    for (var element in muenuTitles) {
      menuItems.add(ListTile(
        title: Text(element, style: const TextStyle(fontSize: 15)),
        onTap: () {},
      ));
    }
    return menuItems;
  }
}
