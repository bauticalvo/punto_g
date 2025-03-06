import 'package:flutter/material.dart';



class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ShopScreen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)), 

      );
  }
}