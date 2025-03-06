import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Row(
        children: [
          SizedBox(width: 10),
          IconButton(
        icon: const Icon(FontAwesomeIcons.bars),
        onPressed: () {
          // Acción del menú
          Scaffold.of(context).openDrawer();
        },
      ),
      ]),
      actions: <Widget>[
        Row(
          children: [
            IconButton(
              icon: const Icon(FontAwesomeIcons.bell),
              onPressed: () {
                // Acción de la notificación
              },
            ),
            CircleAvatar(
              backgroundImage: const AssetImage('assets/images/perfil.jpg')
            ),
            const SizedBox(width: 20),          
          ]
        )
        ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
