// ignore_for_file: use_build_context_synchronously

import 'package:copia_disfood1/pages/screen_bottoms_disfood.dart';
import 'package:copia_disfood1/pages/screens_home.dart';
import 'package:copia_disfood1/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  int _currentIndex = 0;
  List<Widget> screens = const [
    ScreenBottomsDisfood(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: MenuNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Symbols.stadia_controller,
                  color: Colors.white,
                ),
                label: 'Control'),
            BottomNavigationBarItem(
                icon: Icon(
                  Symbols.bar_chart,
                  color: Colors.white,
                ),
                label: 'Graficas'),
            BottomNavigationBarItem(
                icon: Icon(
                  Symbols.face,
                  color: Colors.white,
                ),
                label: 'Cuenta')
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}

AppBar salida(BuildContext context) {
  // Se recibe el context como parámetro
  return AppBar(
    actions: [
      IconButton(
        onPressed: () async {},
        icon: const Icon(Symbols.door_open),
      )
    ],
  );
}
