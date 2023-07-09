import 'package:flutter/material.dart';

class BabyDragonModel extends StatefulWidget {
  const BabyDragonModel({super.key});

  @override
  State<BabyDragonModel> createState() => _BabyDragonModelState();
}

class _BabyDragonModelState extends State<BabyDragonModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade200,
                borderRadius: BorderRadius.circular(22)),
            height: 212,
            width: 150,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Baby Dragon",
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
            bottom: 65,
            right: 10,
            child: Image.asset('images/baby_dragon.png'),
          ),
        ],
      ),
    );
  }
}
