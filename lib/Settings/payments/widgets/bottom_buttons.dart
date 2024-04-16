import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';

class bottomButtons extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onpressed;
  const bottomButtons(
      {super.key,
      required this.text,
      required this.iconData,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          backgroundColor: buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: onpressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconData, // Used IconData instead of Icon
                  color: Colors.white, // Set icon color to white
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
