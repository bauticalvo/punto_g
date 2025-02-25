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
      backgroundColor: Color.fromRGBO(68, 94, 96, 0.5),
      body: Center(child: Text('Click${ count == 1 ? '' : 's'}: $count', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFFE9E02),
          child: Icon(Icons.add),
          onPressed: () {
            count++;
            setState((){});
          },
        ),
      );
  }
}