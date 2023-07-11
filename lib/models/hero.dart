import 'package:flutter/material.dart';
import 'package:flutter_ui_july05/models/model_02/barbarian_detail.dart';

class BarbarianHero extends StatefulWidget {
  const BarbarianHero({super.key});

  @override
  State<BarbarianHero> createState() => _BarbarianHeroState();
}

class _BarbarianHeroState extends State<BarbarianHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BarbarianDetailPage(),
                    ));
              },
              child: Hero(
                tag: 'barbarian',
                child: Image.asset('images/barbarian.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
