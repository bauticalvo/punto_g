

import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {

  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: const Color(0xFFE0AAFF),
      child: const Center(child: Text('Footer', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),),
    );
  }
}