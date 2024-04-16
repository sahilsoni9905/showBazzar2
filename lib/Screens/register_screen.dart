import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/Screens/verify_email.dart';
import 'package:show_bazzar/Widgets/SignUp/form_box.dart';
import 'package:show_bazzar/Widgets/date_picker.dart';
import 'package:show_bazzar/Widgets/function_button.dart';
import 'package:show_bazzar/Widgets/gender_picker.dart';
import 'package:show_bazzar/core/utils/constants/sizes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.black54,
      ),
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
                height: 40,
              ),
              const Text(
                'Lets create an account',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 44,
              ),
              Stack(
                children: [

                  Container(
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
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Form(
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Expanded(
                                    child: FormBox(
                                      labelFormText: 'First Name',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: FormBox(
                                        labelFormText: 'Last Name',
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Row(
                                children: [
                                  Expanded(
                                      child: FormBox(
                                        labelFormText: 'Username',
                                      )),
                                  Expanded(
                                    child: DatePicker(),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const FormBox(labelFormText: 'Phone Number'),
                              const SizedBox(
                                height: 16,
                              ),
                              const FormBox(labelFormText: 'Password'),
                              const SizedBox(
                                height: 16,
                              ),
                              const GenderSelector(),
                              const SizedBox(
                                height: TSizes.spaceBtwItems * 2,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 20,
                                    width: 50,
                                    child: Checkbox(
                                        value: true, onChanged: (value) {}),
                                  ),
                                  const Expanded(
                                    child: Text.rich(
                                      maxLines: 2,
                                      TextSpan(children: [
                                        TextSpan(
                                          text: 'I agree to ',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        TextSpan(
                                          text: 'Privacy policy ',
                                          style: TextStyle(
                                              decoration: TextDecoration.underline,
                                              color: Colors.lightBlueAccent),
                                        ),
                                        TextSpan(
                                          text: 'and ',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        TextSpan(
                                          text: 'Terms of use ',
                                          style: TextStyle(
                                              decoration: TextDecoration.underline,
                                              color: Colors.lightBlueAccent),
                                        ),
                                      ]),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const FunctionButton(
                                  landingScreen: VerifyEmailScreen(),
                                  textForButton: 'Create Account'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 130,
                    top: 0,
                    bottom: 500,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: IconButton(
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {},
                        icon: Image.asset(
                          'images/profile.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16,)

            ],
          ),
        ),
      ),
    );
  }
}
