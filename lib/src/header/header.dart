import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFE0AAFF), // Color de la paleta
      title: const Text(
        "App de Prueba",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black, // Texto en negro
        ),
      ),
      leading: IconButton(
        icon: const HugeIcon(icon: HugeIcons.strokeRoundedMenu01, color: Colors.black),
        onPressed: () {
          // Acción del menú
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
