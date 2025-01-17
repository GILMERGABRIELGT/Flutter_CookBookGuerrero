import 'package:flutter/material.dart';
import '../Widgets/itemHome.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Cookbook Home'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ItemHome(
            title: 'Images',
            onTap: () {
              Navigator.pushNamed(context, '/images');
            },
          ),
          ItemHome(
            title: 'List',
            onTap: () {
              Navigator.pushNamed(context, '/list');
            },
          ),
          ItemHome(
            title: 'Design',
            onTap: () {
              Navigator.pushNamed(context, '/design');
            },
          ),
          ItemHome(
            title: 'Navigation',
            onTap: () {
              Navigator.pushNamed(context, '/navigation');
            },
          ),
          ItemHome(
            title: 'Word Generator',
            onTap: () {
              Navigator.pushNamed(context, '/generator');
            },
          ),
    
        ],
      ),
    );
  }
}