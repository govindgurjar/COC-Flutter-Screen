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
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.amber.shade200),
                height: 100,
                width: 100,
              ),
              Image.asset('images/barbarian.png')
            ],
          ),
        ],
      ),
    );
  }
}
