import 'package:flutter/material.dart';

class LateralMenu extends StatelessWidget {
  const LateralMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFFE9E02)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Menú", style: TextStyle(color: Colors.white, fontSize: 24)),
              IconButton(
                  icon: Icon(Icons.close, color: Colors.white, size: 30), 
                  onPressed: (){ 
                    Navigator.of(context).pop();
                    }
                  ),
            ]),
            
          ),
          ListTile(title: Text("Opción 1")),
          ListTile(title: Text("Opción 2")),
        ],
      ),
    );
  }
}
