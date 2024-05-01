import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_bazzar/Screens/forget_password.dart';
import 'package:show_bazzar/core/utils/constants/sizes.dart';
import 'package:show_bazzar/core/utils/constants/text_strings.dart';
import 'package:show_bazzar/core/utils/helpers/helper_functions.dart';

import '../Widgets/function_button.dart';
import 'log_in_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){ Navigator.of(context).pop();}, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            ///Image with 60% of screen width
            Image.asset('images/success2.png', width: THelperFunctions.screenWidth() * 0.6,),
            const SizedBox(
              height: 16,
            ),
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const FunctionButton(landingScreen: LogInScreen(), textForButton: TTexts.done,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const ForgetPasswordScreen(),
                  ),
                );
              }, child: const Text(TTexts.resendEmail),),
            )
            ///Title & SubTitle
            /// Buttons
          ],),
        ),
      ),
    );
  }
}
