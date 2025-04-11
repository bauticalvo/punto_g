import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const Footer({super.key, required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color:  Theme.of(context).colorScheme.secondary,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(FontAwesomeIcons.house, "Inicio", 0, context),
              _buildNavItem(FontAwesomeIcons.map, "Locales", 1, context),
              // Empty SizedBox to maintain spacing
              SizedBox( width:60),
              _buildNavItem(FontAwesomeIcons.gift, "Recompensas", 3, context),
              _buildNavItem(FontAwesomeIcons.medal, "Desafios", 4, context),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -40,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(20), // Increased padding here
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.secondary,
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: _buildNavItem(FontAwesomeIcons.qrcode, "QR", 2, context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index, BuildContext context) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: index == 2 ? 
        Icon(
          icon,
          color: Theme.of(context).colorScheme.onPrimary,
          size: 30, // Made QR icon slightly bigger
        ) :
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: selectedIndex == index ? 
                Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                size: 24,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: selectedIndex == index ? 
                  Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
