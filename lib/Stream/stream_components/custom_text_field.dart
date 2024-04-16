import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final TextEditingController controller;
  const customTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6552FE), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF6552FE)))),
    );
  }
}
