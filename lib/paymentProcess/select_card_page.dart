import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/paymentProcess/confirmation_page.dart';

class selectCardPage extends StatefulWidget {
  selectCardPage({super.key});

  @override
  State<selectCardPage> createState() => _selectCardPageState();
}

class _selectCardPageState extends State<selectCardPage> {
  final _cardNumberController = TextEditingController();

  final _cardHolderNameController = TextEditingController();

  final _expiryDateController = TextEditingController();

  final _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Select Card'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Divider(
            color: Color.fromARGB(255, 234, 229, 229),
            height: 10,
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 232, 232, 232),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.credit_card,
                            size: 35,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Credit or Debit Card',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1, bottom: 5),
                      child: Text(
                        'Note: Please ensure your card can be used for online transactions.',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Container(
                      width: 390,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _cardHolderNameController,
                              decoration: InputDecoration(
                                labelText: 'Card Holder Name',
                                hintText: 'Edward Kenway',
                                labelStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                hintStyle: TextStyle(fontSize: 12),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                            TextFormField(
                              controller: _cardNumberController,
                              decoration: InputDecoration(
                                labelText: 'Card Number',
                                hintText: 'XXXX  XXXX  XXXX  XXXX',
                                labelStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                                hintStyle: TextStyle(fontSize: 12),
                              ),
                              keyboardType: TextInputType.number,
                              maxLength: 16,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _cvvController,
                                    decoration: InputDecoration(
                                      labelText: 'CVV',
                                      hintText: 'XXX',
                                      labelStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      hintStyle: TextStyle(fontSize: 12),
                                    ),
                                    keyboardType: TextInputType.text,
                                    maxLength: 3,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                  height: 1,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: _expiryDateController,
                                    decoration: InputDecoration(
                                      labelText: 'Expiry Date',
                                      hintText: 'MM/YY',
                                      labelStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      hintStyle: TextStyle(fontSize: 12),
                                    ),
                                    keyboardType: TextInputType.text,
                                    maxLength: 5,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 200,
                              height: 40,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<
                                          Color>(
                                      const Color.fromARGB(255, 101, 82, 254)),
                                  padding: MaterialStateProperty.all<
                                      EdgeInsetsGeometry>(
                                    EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  // Handle button press
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) =>   confirmationPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Confirm Payment',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
