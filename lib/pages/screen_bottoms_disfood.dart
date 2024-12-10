import 'package:copia_disfood1/widgets/buttons.dart';
import 'package:copia_disfood1/widgets/container_pets.dart';
import 'package:copia_disfood1/widgets/estado_casa.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ScreenBottomsDisfood extends StatefulWidget {
  const ScreenBottomsDisfood({super.key});

  @override
  State<ScreenBottomsDisfood> createState() => _ScreenBottomsDisfoodState();
}

class _ScreenBottomsDisfoodState extends State<ScreenBottomsDisfood> {
//Envia comando a la base datos en tiempo real

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 20), child: InHomeEstado()),

          //
          const Text('Funciones del dispensador',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  height: 2)),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buttonArduino(
                      color: Colors.deepPurple[100],
                      onPressed: () {},
                      icon: Icon(Symbols.lunch_dining_sharp),
                      label: Text('Alimento'),
                    ),
                    buttonArduino(
                      color: Colors.blue[100],
                      onPressed: () {},
                      icon: Icon(Symbols.auto_awesome),
                      label: Text('Automatic'),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buttonArduino(
                      color: Colors.cyan[100],
                      onPressed: () {},
                      icon: Icon(Symbols.water_drop),
                      label: Text('Bebedero'),
                    ),
                    buttonArduino(
                      color: Colors.grey[300],
                      onPressed: () {},
                      icon: Icon(Symbols.mode_off_on),
                      label: Text('Apagado'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const ContainerPets()
        ],
      ),
    );
  }
}
