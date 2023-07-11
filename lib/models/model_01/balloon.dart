import 'package:flutter/material.dart';

class BalloonModel extends StatefulWidget {
  const BalloonModel({super.key});

  @override
  State<BalloonModel> createState() => _BalloonModelState();
}

class _BalloonModelState extends State<BalloonModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Positioned(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(22)),
              height: 212,
              width: 150,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Balloon",
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
              left: 40,
              child: Image.asset('images/balloon.png'),
            ),
          ],
        ),
      ),
    );
  }
}
