import 'package:flutter/material.dart';
import 'package:cookbook/features/EjercicioLists/Presentation/Screen/ScreenGridList.dart';
import 'package:cookbook/features/EjercicioLists/Presentation/Widgets/itemList.dart';
import 'package:cookbook/features/EjercicioLists/Presentation/Screen/ScreenHorizontalList.dart';
import 'package:cookbook/features/EjercicioLists/Presentation/Screen/ScreenListWithTypes.dart';
import 'package:cookbook/features/EjercicioLists/Presentation/Screen/ScreenFloatingAppBar.dart';
import 'package:cookbook/features/EjercicioLists/Presentation/Screen/ScreenUseLists.dart';
import 'package:cookbook/features/EjercicioLists/Presentation/Screen/ScreenLongLists.dart';
import 'package:cookbook/features/EjercicioLists/Presentation/Screen/ScreenSpaceList.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Options'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ItemList(
            title: 'Screen Grid List',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenGridList()),
              );
            },
          ),
          ItemList(
            title: 'Screen Horizontal List',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenHorizontalList()),
              );
            },
          ),
          ItemList(
            title: 'Screen List With Types',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenListWithTypes()),
              );
            },
          ),
          ItemList(
            title: 'Screen Floating App Bar',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenFloatingAppBar(),
                ),
              );
            },
          ),
          ItemList(
            title: 'Screen Use Lists',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenUseLists(),
                ),
              );
            },
          ),
          ItemList(
            title: 'Screen Long Lists',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenLongLists(),
                ),
              );
            },
          ),
          // Botón para Screen Space List
          ItemList(
            title: 'Screen Space List',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenSpaceList(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}