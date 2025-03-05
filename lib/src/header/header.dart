import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffE5EAFC), // Color de la paleta
      title: const Text(
        "App de Prueba",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black, // Texto en negro
        ),
      ),
      leading: IconButton(
        icon: const Icon(FontAwesomeIcons.bars),
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
