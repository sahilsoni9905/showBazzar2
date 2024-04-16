import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_bazzar/Screens/success_screen.dart';
import 'package:show_bazzar/Widgets/function_button.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                CupertinoIcons.clear,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/Verify2.png'),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Verify your email address!',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'support@showbazzar.com',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Congratulations! Your Account Awaits: Verify Your Email to Start Shopping and Experience a world of unrivaled Deals and Personalized Offers.',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16,),
              const FunctionButton(landingScreen: SuccessScreen(), textForButton: 'Continue', ),
              const SizedBox(height: 16,),
              TextButton(
                onPressed: () {

                },
                child:  Text(
                  'Resend Email',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
