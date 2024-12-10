// ignore_for_file: use_build_context_synchronously

import 'package:copia_disfood1/widgets/buttons.dart';
import 'package:copia_disfood1/widgets/form_widget.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:http/http.dart';

import 'package:flutter/material.dart';

class ScreeenSignUp extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final url = "";

  void _signup() {
    post(Uri.parse(url));
  }

  ScreeenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/giffs/pato.gif',
              scale: 2.5,
            ),
            const Text(
              'Regístrate',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
            FormBuilder(
              child: Column(
                children: [
                  WidgetFormText(
                    controller: emailController,
                    name: 'email',
                    hintText: 'Ingresa tu email',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(15)),
                  WidgetFormText(
                    controller: passwordController,
                    name: 'pass',
                    hintText: 'Ingresa tu contraseña',
                    prefixIcon: const Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            buttonRegister(onPressed: () => _signup)
          ],
        ),
      ),
    );
  }
}
