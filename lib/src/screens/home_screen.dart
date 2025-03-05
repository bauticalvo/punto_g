import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffE5EAFC), 
      body: Center(child: Text('HomeScreen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)), 
      );
  }
}