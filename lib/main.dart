import 'package:flutter/material.dart';
import 'package:cookbook/core/themes/app_theme.dart';
import 'package:provider/provider.dart';
import 'features/Home/Presentation/Screen/Home.dart';
import 'features/EjercicioGeneratorWords/Presentation/Screen/GeneratorScreen.dart';
import 'features/EJercicioImages/Presentation/Screen/images.dart';
import 'features/EjercicioLists/Presentation/Screen/ListScreen.dart';
import 'features/EJercicioDesign/Presentation/Screen/ScreenDesign.dart';
import 'features/EjercicioNavigation/Presentation/Screen/ScreenNavigation.dart';
import 'features/MyAppState.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Flutter Cookbook',
        theme: AppThemes.lightTheme, // Tema claro definido en AppThemes
        darkTheme: AppThemes.darkTheme, // Tema oscuro definido en AppThemes
        themeMode: ThemeMode.system, // Cambia automáticamente según el sistema (opcional)
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(),
          '/generator': (context) => const GeneratorScreen(),
          '/images': (context) => const Images(),
          '/list': (context) => const ListScreen(),
          '/design': (context) => const ScreenDesign(),
          '/navigation': (context) => const ScreenNavigation(),
        },
      ),
    );
  }
}
