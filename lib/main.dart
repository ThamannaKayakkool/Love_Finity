import 'package:flutter/material.dart';
import 'package:love_finity/src/features/nav_bar/presentation/views/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Love Finity',
      debugShowCheckedModeBanner: false,
      home:NavBar(),
    );
  }
}

