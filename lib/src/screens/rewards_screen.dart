import 'package:flutter/material.dart';



class RewardsScreen extends StatefulWidget {
  const RewardsScreen({super.key});

  @override
  State<RewardsScreen> createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('RewardsScreen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)), 
      );
  }
}