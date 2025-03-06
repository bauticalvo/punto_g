import 'package:app_de_prueba/config/theme/app_theme.dart';
import 'package:app_de_prueba/src/footer/footer.dart';
import 'package:app_de_prueba/src/header/lateral_menu.dart';
import 'package:app_de_prueba/src/screens/rewards_screen.dart';
import 'package:app_de_prueba/src/screens/settings_front.dart';
import 'package:app_de_prueba/src/screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_de_prueba/src/header/header.dart';
import 'package:app_de_prueba/src/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const RewardsScreen(),
    const ShopScreen(),
    const SettingsScreen()
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: _screens[selectedIndex],
      drawer: const LateralMenu(),
      bottomNavigationBar: Footer(onItemTapped: onItemTapped, selectedIndex: selectedIndex),

    );
  }
}
