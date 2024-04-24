import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/Screens/forget_password.dart';
import 'package:show_bazzar/Screens/home_screen.dart';
import 'package:show_bazzar/Screens/register_screen.dart';
import 'package:show_bazzar/Settings/bottom_bar.dart';
import 'package:show_bazzar/Widgets/function_button.dart';
import 'package:show_bazzar/core/utils/constants/sizes.dart';

import '../Widgets/Common Widgets/trounded_image.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                // end: Alignment.bottomRight,
                colors: [Colors.indigo.shade900, Colors.blue.shade400],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: TSizes.spaceBtwItems * 2,),
                Stack(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.blue.shade800,
                              blurRadius: 4,
                              offset: const Offset(6, 6),
                            ),
                          ],
                        ),
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 32,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              'Log in to continue',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    // border: const Border(
                                    //   bottom: BorderSide(color: Colors.grey),
                                    // ),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Email or Phone Number',
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    // border: const Border(
                                    //   bottom: BorderSide(color: Colors),
                                    // ),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Password',
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                 TextButton(
                                  child: Text('Forgot Password?',style: TextStyle(color: Colors.lightBlue),),
                                  onPressed: (){
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => const ForgetPasswordScreen(),
                                      ),
                                    );
                                  },

                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const FunctionButton(landingScreen: bottomBar(), textForButton: 'Sign in'),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Dont have an account',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (ctx) => const RegisterScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        'Register',
                                        style: TextStyle(color: Colors.lightBlue),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 120,
                      top: 0,
                      child: TRoundedImage(
                        fit: BoxFit.cover,
                        width: 120,
                        borderRadius: 60,
                        imageUrl: 'images/Logo.png',

                      ),
                    ),
                    SizedBox(height: TSizes.spaceBtwItems,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook,
                        size: 40,
                        color: Colors.lightBlue.shade50,
                      ),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.link,
                        size: 40,
                        color: Colors.lightBlue.shade50,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
