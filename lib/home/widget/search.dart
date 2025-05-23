import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // color: Colors.yellow,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(width: 0, style: BorderStyle.none),
              ),
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
                // color: Color.fromARGB(255, 83, 43, 193),
              ),
              hintText: "Rechercher",
              hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
          ),
          Positioned(
              right: 12,
              bottom: 10,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 83, 43, 193),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.mic_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
