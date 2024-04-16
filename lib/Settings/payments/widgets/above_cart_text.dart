import 'package:flutter/material.dart';

class AboveCartText extends StatelessWidget {
  final VoidCallback onpressed;
  const AboveCartText({Key? key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: onpressed,
          child: Text(
            'My Cards',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ))
      ],
    );
  }
}
