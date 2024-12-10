// ignore_for_file: use_build_context_synchronously

import 'package:copia_disfood1/pages/screns_principal.dart';
import 'package:copia_disfood1/widgets/buttons.dart';
import 'package:copia_disfood1/widgets/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ScreeenLogin extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  ScreeenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: FormBuilder(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/giffs/gatito.gif',
                scale: 2,
              ),
              const Text(
                'Inicia Sesión',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
              WidgetFormText(
                controller: emailController,
                name: 'email',
                hintText: 'Ingresa tu email',
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ),
              WidgetFormText(
                controller: passwordController,
                name: 'pass',
                hintText: 'Ingresa tu contraseña',
                prefixIcon: const Icon(
                  Icons.password,
                  color: Colors.white,
                ),
              ),
              buttonLogin(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
