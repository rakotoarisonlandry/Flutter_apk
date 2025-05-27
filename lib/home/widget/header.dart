import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bienvenue",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(
                height: 5,
              ),
              Text("Quel est votre motivation?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
