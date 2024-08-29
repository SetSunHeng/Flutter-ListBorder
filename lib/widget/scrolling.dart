import 'package:flutter/material.dart';

class ListScroll extends StatelessWidget {
  final String title;
  final bool isSelected;
  const ListScroll({super.key, required this.title, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: OutlinedButton(
            onPressed: () {},
            child: Text(title, style: const TextStyle(fontSize: 20, color: Colors.black87),),
          ),
    );
  }
}