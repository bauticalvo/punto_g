import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const Footer({super.key, required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffE5EAFC), 
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        backgroundColor: Colors.transparent, // Hacerlo transparente para que el color del Container se vea
        selectedItemColor: Color(0xff5A189A),  
        unselectedItemColor: Color(0xff9D4EDD),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gift),
            label: 'Recompensas',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shop),
            label: 'Tienda',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
