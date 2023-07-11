import 'package:flutter/material.dart';
import 'package:flutter_ui_july05/models/model_01/baby_dragon.dart';
import 'package:flutter_ui_july05/models/model_01/barbarian.dart';

import 'models/model_01/balloon.dart';
import 'models/model_01/dragon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Title(
          color: Colors.green,
          child: const Center(
            child: Text(
              'Clash Of Clans',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/group1.png'),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              BarbarianModel(),
              BalloonModel(),
            ],
          ),
          Row(
            children: [
              BabyDragonModel(),
              DragonModel(),
            ],
          ),
        ],
      ),
    );
  }
}
