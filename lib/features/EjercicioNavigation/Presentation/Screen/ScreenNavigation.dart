import 'package:flutter/material.dart';
import 'package:cookbook/features/EjercicioNavigation/Presentation/Screen/ScreenNavigationAnimateWidget.dart';
import 'package:cookbook/features/EjercicioNavigation/Presentation/Widgets/itemNavigation.dart';
import 'package:cookbook/features/EjercicioNavigation/Presentation/Screen/ScreenNavigationToBack.dart';
import 'package:cookbook/features/EjercicioNavigation/Presentation/Screen/ScreenNavigationWithRoutes.dart';
import 'package:cookbook/features/EjercicioNavigation/Presentation/Screen/ScreenNavigationPassArguments.dart';
import 'package:cookbook/features/EjercicioNavigation/Presentation/Screen/ScreenNavigationReturnData.dart';
import 'package:cookbook/features/EjercicioNavigation/Presentation/Screen/ScreenSentData.dart';


class ScreenNavigation extends StatelessWidget {
  const ScreenNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Options'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ItemNavigation(
            title: 'Animate Widget',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenNavigationAnimateWidget(),
                ),
              );
            },
          ),
        
          ItemNavigation(
            title: 'Navigation with Back',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenNavigationToBack(),
                ),
              );
            },
          ),
           ItemNavigation(
            title: 'Navigation with Routes',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenNavigationWithRoutes(),
                ),
              );
            },
          ),
           ItemNavigation(
            title: 'Pass Arguments',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenNavigationPassArguments(),
                ),
              );
            },
          ),
          ItemNavigation(
            title: 'Return Data Demo',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenNavigationReturnData(),
                ),
              );
            },
          ),
           ItemNavigation(
            title: 'Send Data',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenSentData(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
