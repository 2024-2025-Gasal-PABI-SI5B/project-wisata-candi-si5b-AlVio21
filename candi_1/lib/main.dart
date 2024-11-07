import 'package:candi_1/data/candi_data.dart';
import 'package:flutter/material.dart';
import 'package:candi_1/screens/detail_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
      home: DetailScreen(
        candi: candiList[0],
        ),
    );
  }
}

