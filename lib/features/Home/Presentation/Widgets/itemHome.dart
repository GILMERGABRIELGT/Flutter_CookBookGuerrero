import 'package:flutter/material.dart';

class ItemHome extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ItemHome({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(title),
      ),
    );
  }
}
