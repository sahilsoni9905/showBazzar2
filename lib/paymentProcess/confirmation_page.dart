import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_bazzar/Screens/home_screen.dart';

class confirmationPage extends StatelessWidget {
  const confirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 101, 82, 254)),
              child: const Center(
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
            const Text(
              'Success',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Text('Your Order has been successfully placed'),
            const Text(
              'Thank you for shopping using ShowBazzar',
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Container(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 101, 82, 254)),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Handle button press
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) =>  HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Continue Shopping',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
