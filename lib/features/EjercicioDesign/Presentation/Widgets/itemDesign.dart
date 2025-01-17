import 'package:flutter/material.dart';

class ItemDesign extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ItemDesign({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(title),
      ),
    );
  }
}
