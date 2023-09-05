import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final categoryName;

  const Category({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.green[400],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          children: [
            Text(
              categoryName,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
