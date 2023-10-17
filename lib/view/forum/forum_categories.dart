import 'package:flutter/material.dart';

class ForumCategories extends StatelessWidget {
  final List<String> items;

  ForumCategories({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(items[index]),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.grey, // Button's text color
            ),
          ),
        );
      },
    );
  }
}
