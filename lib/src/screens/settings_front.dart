import 'package:flutter/material.dart';



class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffE5EAFC), 
      body: Center(child: Text('SettingsScreen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)), 

      );
  }
}