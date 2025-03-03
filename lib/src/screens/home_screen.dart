import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFE0AAFF),
      body: Center(child: Text('Click${ count == 1 ? '' : 's'}: $count', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)), 
      );
  }
}