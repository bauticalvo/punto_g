import 'package:flutter/material.dart';



class ChallengesScreen extends StatefulWidget {
  const ChallengesScreen({super.key});

  @override
  State<ChallengesScreen> createState() => _ChallengesScreenState();
}

class _ChallengesScreenState extends State<ChallengesScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ChallengesScreen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)), 

      );
  }
}