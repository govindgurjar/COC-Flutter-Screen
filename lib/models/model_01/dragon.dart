import 'package:flutter/material.dart';

class DragonModel extends StatefulWidget {
  const DragonModel({super.key});

  @override
  State<DragonModel> createState() => _DragonModelState();
}

class _DragonModelState extends State<DragonModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(22)),
            height: 212,
            width: 150,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Dragon",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 10,
            child: Image.asset('images/dragon.png'),
          ),
        ],
      ),
    );
  }
}
