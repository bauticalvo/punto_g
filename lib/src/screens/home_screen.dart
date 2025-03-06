import 'package:app_de_prueba/src/home_components/home_custombutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //PRIMER COMPONENTE
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: 
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("!Hola, Bito!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSecondary),),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.star, color: Colors.yellow, size: 20,),
                      SizedBox(width: 10),
                      Text("2.500", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSecondary),),
                      SizedBox(width: 10),
                      Text("puntos", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSecondary),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nivel platino", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSecondary),),
                      Text("Progress bar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSecondary),)
                    ],
                  ),
                ],
              ),
      ),
      //SEGUNDO COMPONENTE
      SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const SizedBox(width: 0),
          CustomButton(
                icon: FontAwesomeIcons.gift,
                label: 'Recompensas',
                onPressed: () {
                },
              ),
              CustomButton(
                icon: FontAwesomeIcons.shop,
                label: 'Tienda',
                onPressed: () {
                },
              ),
              CustomButton(
                icon: FontAwesomeIcons.clockRotateLeft,
                label: 'Historial',
                onPressed: () {
                },
              ),
              CustomButton(
                icon: FontAwesomeIcons.medal,
                label: 'Niveles',
                onPressed: () {
                },
              ),
          const SizedBox(width: 0),
        ],),
      )
      ])
      );
  }
}