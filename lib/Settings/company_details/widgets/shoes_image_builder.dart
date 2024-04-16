import 'package:flutter/material.dart';

class ShoesImageBuilder extends StatelessWidget {
  final image;
  const ShoesImageBuilder({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          image,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
