import 'package:flutter/material.dart';
import 'package:show_bazzar/Stream/stream_components/stream_colors.dart';

class NeuBox extends StatelessWidget {
  final Widget? child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: StremColors.streamBackground,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              offset: Offset(4, 4),
            ),
            // BoxShadow(
            //     color: Colors.white,
            //     blurRadius: 15,
            //     offset: const Offset(-4, -4))
          ]),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}
