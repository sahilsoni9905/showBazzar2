import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Screens/product_detail_screen.dart';

class GridImageEditer extends StatefulWidget {
  const GridImageEditer(
      {Key? key, required this.imageAddress, required this.size})
      : super(key: key);

  final String imageAddress;
  final BoxConstraints size;

  @override
  State<GridImageEditer> createState() => _GridImageEditerState();
}

class _GridImageEditerState extends State<GridImageEditer> {
  Color col = const Color.fromARGB(255, 172, 171, 171);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ProductDetailScreen(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Color.fromARGB(255, 57, 126, 237),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  widget.imageAddress,
                  height: widget.size.maxHeight * 0.8,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  // Adjust width as needed
                ),
                SizedBox(height: 8),
                Text(
                  'Nike Air Max',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Rs 2999',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 12,
          right: 12,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),

            child: IconButton(
              onPressed: () {
                if (col == Color.fromARGB(255, 172, 171, 171)) {
                  col = Colors.red;
                } else
                  col = Color.fromARGB(255, 172, 171, 171);
                setState(() {});
              },
              icon: Icon(
                Icons.favorite,
                color: col,
              ),
            ), // Change the icon as needed
            // Change the color as needed
          ),
        ),
      ],
    );
  }
}
