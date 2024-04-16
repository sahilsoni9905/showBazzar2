import 'package:flutter/material.dart';
import 'package:show_bazzar/Screens/log_in_screen.dart';
import 'package:show_bazzar/Widgets/function_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(54),
          child: Column(
            children: [
              Image.asset('images/success2.png'),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Your account successfully created!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Welcome to Your Ultimate Shopping Destination: Your Account is Created, Unleash the Joy of Seamless Online Shopping!',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
               const FunctionButton(landingScreen: LogInScreen(), textForButton: 'Continue',),
            ],
          ),
        ),
      ),
    );
  }
}


