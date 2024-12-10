import 'package:copia_disfood1/auth/screen_login.dart';
import 'package:copia_disfood1/auth/screen_signup.dart';
import 'package:copia_disfood1/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  int _currentIndex = 0;
  List<Widget> screens = [ScreeenLogin(), ScreeenSignUp()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/fondo.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: screens[_currentIndex],
          bottomNavigationBar: MenuNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.login_outlined,
                  ),
                  label: 'Inicio'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_4_outlined,
                  ),
                  label: 'Registro')
            ],
          )),
    );
  }
}
