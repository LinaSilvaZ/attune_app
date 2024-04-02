//widgets for material design
import 'package:flutter/material.dart';
import 'package:gridview_menu/gridview_menu.dart';
//The database
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'home_widget.dart';
import 'housing.dart';

class MenuHome extends StatefulWidget {
  final Color color =
      const Color.fromRGBO(103, 134, 183, 1); // Color.fromRGBO(230, 121, 59, 1);

  const MenuHome({super.key});
  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    List<MenuItem> menuItem = <MenuItem>[
      MenuItem(
        icon: Icons.event,
        color: widget.color,
        subtitle: '-',
        title: 'Housing',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.event,
        color: widget.color,
        subtitle: '',
        title: 'Furniture',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.schedule,
        color: widget.color,
        subtitle: '',
        title: 'Grocery',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.schedule,
        color: widget.color,
        subtitle: '',
        title: 'Clothes',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.schedule,
        color: widget.color,
        subtitle: '',
        title: 'Events',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.schedule,
        color: widget.color,
        subtitle: '',
        title: 'Board',
        child: const Housing(),
        disabled: true,
      ),
    ];
    return HomeWidget(
      menuItem: menuItem,
    );
  }
}
