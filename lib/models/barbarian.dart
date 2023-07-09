import 'package:flutter/material.dart';

class BarbarianModel extends StatefulWidget {
  const BarbarianModel({super.key});

  @override
  State<BarbarianModel> createState() => _BarbarianModelState();
}

class _BarbarianModelState extends State<BarbarianModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.amber.shade200,
                borderRadius: BorderRadius.circular(22)),
            height: 212,
            width: 150,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Barbarian",
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
            bottom: 50,
            right: 10,
            child: Image.asset('images/barbarian.png'),
          ),
        ],
      ),
    );
  }
}
