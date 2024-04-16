import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/paymentProcess//data/items.dart';

class cartItems extends StatefulWidget {
  ShopItems shopItems;
  cartItems({super.key, required this.shopItems});

  @override
  State<cartItems> createState() => _cartItemsState();
}

class _cartItemsState extends State<cartItems> {
  void _increasequantity() {
    setState(() {
      widget.shopItems.quantity++;
    });
  }

  void _decreasequantity() {
    setState(() {
      if (widget.shopItems.quantity > 1) {
        widget.shopItems.quantity--;
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 233, 233, 233),
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              height: 60,
              width: 80,
              child: Image.asset(widget.shopItems.imagePath, fit: BoxFit.fill,),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.shopItems.Name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$ ${widget.shopItems.Price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF531982),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Handle decrease quantity
                                _decreasequantity();
                              },
                              child: Icon(Icons.remove),
                            ),
                            Text(
                              widget.shopItems.quantity.toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle increase quantity
                                _increasequantity();
                              },
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
