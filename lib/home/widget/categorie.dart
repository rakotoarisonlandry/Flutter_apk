import 'package:flutter/material.dart';

class CategoriSection extends StatelessWidget {
  CategoriSection({super.key});
  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF4C8EF1),
      'title': 'Arcade',
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFF4C8EF1),
      'title': 'Arcade',
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4C8EF1),
      'title': 'Arcade',
    },
    {
      'icon': Icons.sports_esports_outlined,
      'color': const Color(0xFF4C8EF1),
      'title': 'Arcade',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            child: ListView.builder(
              itemBuilder: (context, index) {},
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
            ),
            color: const Color.fromARGB(255, 83, 43, 193),
          )
        ],
      ),
    );
  }
}
