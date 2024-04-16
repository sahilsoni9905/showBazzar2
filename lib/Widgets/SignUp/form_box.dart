import 'package:flutter/material.dart';

class FormBox extends StatelessWidget {
  const FormBox({
    super.key,
    required this.labelFormText
  });
  final String labelFormText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(80)),
      child: TextFormField(
        decoration:  InputDecoration(
          labelText: labelFormText,
        ),
        expands: false,
      ),
    );
  }
}