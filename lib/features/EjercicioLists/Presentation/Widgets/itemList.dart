import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ItemList({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
