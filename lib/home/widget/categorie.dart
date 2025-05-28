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
      'title': 'PES',
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4C8EF1),
      'title': 'Casino',
    },
    {
      'icon': Icons.sports_esports_outlined,
      'color': const Color(0xFF4C8EF1),
      'title': ' Action',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          // Liste horizontale des catégories
          Container(
            height: 50,
            color: const Color.fromARGB(255, 83, 43, 193),
            child: ListView.builder(
              itemBuilder: (context, index) {
                final category = categories[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      Icon(category['icon'] as IconData, color: Colors.white),
                      const SizedBox(width: 4),
                      Text(
                        category['title'] as String,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text(
                "Test me",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
