import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ContainerPets extends StatefulWidget {
  const ContainerPets({super.key});

  @override
  State<ContainerPets> createState() => _ContainerPetsState();
}

class _ContainerPetsState extends State<ContainerPets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15, top: 50, left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Symbols.pets,
              size: 60,
            ),
            Column(children: [
              Text(
                'Si sales recuerda el modo automatico',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )
            ])
          ],
        ),
      ),
    );
  }
}
