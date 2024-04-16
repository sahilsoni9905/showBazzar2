import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/payments/widgets/custom_text_field.dart';

class FilterBottomSheet extends StatefulWidget {
  FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  final TextEditingController searchController = TextEditingController();

  bool shoesClicked = false;
  bool bagsClicked = false;
  bool clothsClicked = false;
  bool red = false;
  bool green = false;
  bool blue = false;
  bool yellow = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Filter',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                      controller: searchController, hintText: 'search'),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          shoesClicked = !shoesClicked;
                        });
                      },
                      child: Text(
                        'Shoes',
                        style: TextStyle(fontSize: 20),
                      )),
                  if (shoesClicked == true)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sneakers'),
                          Text('Boots'),
                          Text('Formal Shoes'),
                          Text('Sneakers'),
                        ],
                      ),
                    ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          bagsClicked = !bagsClicked;
                        });
                      },
                      child: Text(
                        'Bags',
                        style: TextStyle(fontSize: 20),
                      )),
                  if (bagsClicked == true)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bag_a'),
                          Text('Bag_b'),
                          Text('Bag_c'),
                          Text('Bag_d'),
                        ],
                      ),
                    ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        clothsClicked = !clothsClicked;
                      });
                    },
                    child: Text(
                      'Clothes',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  if (clothsClicked == true)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('clothes_A'),
                          Text('clothes_B'),
                          Text('clothes_C'),
                          Text('clothes_D'),
                        ],
                      ),
                    ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Colors",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 24, 6, 220),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              title: Text(
                                'Red ',
                                style: TextStyle(color: Colors.red),
                              ),
                              trailing: Transform.scale(
                                scale: 0.8,
                                child: Switch(
                                    value: red,
                                    onChanged: (value) {
                                      setState(() {
                                        red = value;
                                      });
                                    }),
                              ),
                            ),
                            ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              title: Text(
                                'Green ',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 5, 104, 18)),
                              ),
                              trailing: Transform.scale(
                                scale: 0.8,
                                child: Switch(
                                    value: green,
                                    onChanged: (value) {
                                      setState(() {
                                        green = value;
                                      });
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
