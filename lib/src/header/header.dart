import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, // Alineación a la izquierda
      children: [
        Icon(Icons.menu, color: Colors.black87),
        const SizedBox(width: 8), // Espaciado
        const Text(
          "App de Prueba",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ],
    );
  }
}
