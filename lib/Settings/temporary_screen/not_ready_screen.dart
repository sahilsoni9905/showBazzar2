import 'package:flutter/material.dart';

class notReadyScreen extends StatelessWidget {
  const notReadyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This Screen is not ready',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
