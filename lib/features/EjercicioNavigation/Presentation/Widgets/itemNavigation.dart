import 'package:flutter/material.dart';

class ItemNavigation extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ItemNavigation({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}
