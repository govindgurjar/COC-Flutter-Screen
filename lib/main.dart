import 'package:flutter/material.dart';
import 'package:flutter_ui_july05/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clash Of Clans',
      home: HomePage(),
    );
  }
}
