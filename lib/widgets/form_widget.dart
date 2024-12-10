import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_form_builder/flutter_form_builder.dart';

class WidgetFormText extends StatefulWidget {
  final String name;
  final String hintText;
  final Icon prefixIcon;
  final TextEditingController controller;

  const WidgetFormText({
    super.key,
    required this.name,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
  });

  @override
  State<WidgetFormText> createState() => _WidgetFormTextState();
}

class _WidgetFormTextState extends State<WidgetFormText> {
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      controller: widget.controller,
      style: const TextStyle(color: Colors.white),
      name: widget.name,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
