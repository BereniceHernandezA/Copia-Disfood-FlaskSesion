import 'package:copia_disfood1/pages/screens_home.dart';
import 'package:flutter/material.dart';

// Botón para iniciar sesión
ElevatedButton buttonLogin({required VoidCallback onPressed}) {
  return ElevatedButton.icon(
    onPressed: onPressed,
    icon: const Icon(Icons.login),
    label: const Text('Iniciar Sesión'),
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Bordes redondeados
      ),
    ),
  );
}

// Botón para registro
ElevatedButton buttonRegister({required VoidCallback onPressed}) {
  return ElevatedButton.icon(
    onPressed: onPressed,
    icon: const Icon(Icons.app_registration),
    label: const Text('Registrarse'),
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Bordes redondeados
      ),
    ),
  );
}

//botones para ejecutar ordenes arduino
ElevatedButton buttonArduino({
  required VoidCallback onPressed,
  required Widget icon,
  required Widget label,
  Color? color,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: color ?? Colors.blueGrey,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Bordes redondeados
      ),
    ),
    child: Column(
      children: [
        icon,
        label,
      ],
    ),
  );
}

//botones para En casa y Fuera de casa

ElevatedButton buttonEstadoCasa({
  required VoidCallback onPressed,
  required Widget icon,
  required Widget label,
  Color? color,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: color ?? Colors.white54,
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Bordes redondeados
      ),
    ),
    child: Row(
      children: [
        icon,
        label,
      ],
    ),
  );
}

//Boton para cerrar sesion
ElevatedButton buttonClose(BuildContext context) {
  return ElevatedButton.icon(
    onPressed: () {},
    label: Text(
      'Cerrar Sesion',
      style: TextStyle(color: Colors.red),
    ),
    style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(60),
        backgroundColor: Colors.white70,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
}
