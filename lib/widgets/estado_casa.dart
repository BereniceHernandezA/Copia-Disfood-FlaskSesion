import 'package:copia_disfood1/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class InHomeEstado extends StatefulWidget {
  const InHomeEstado({super.key});

  @override
  State<InHomeEstado> createState() => _InHomeEstadoState();
}

class _InHomeEstadoState extends State<InHomeEstado> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 3.5,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/casayperro.jpeg'),
              fit: BoxFit.cover)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          'Bienvenido',
          style: TextStyle(
              color: Colors.white,
              wordSpacing: 2,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buttonEstadoCasa(
              onPressed: () {},
              label: Text('En casa'),
              icon: Icon(Symbols.home),
            ),
            buttonEstadoCasa(
              onPressed: () {},
              label: Text('Fuera'),
              icon: Icon(Symbols.directions_run),
            )
          ],
        ),
      ]),
    );
  }
}
