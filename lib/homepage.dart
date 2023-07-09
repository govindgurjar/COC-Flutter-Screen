import 'package:flutter/material.dart';

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
          // Container(
          //   decoration: const BoxDecoration(color: Colors.transparent),
          //   height: _mediaQuery.height * 0.23,
          //   width: _mediaQuery.width * 1,
          //   child: Image.asset('images/group1.png'),
          // ),

          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.amber.shade200,
                    borderRadius: BorderRadius.circular(22)),
                height: 250,
                width: 180,
              ),
              Image.asset('images/barbarian.png'),
              // Positioned(
              //     left: 0,
              //     bottom: 40,
              //     child),
            ],
          ),
        ],
      ),
    );
  }
}
