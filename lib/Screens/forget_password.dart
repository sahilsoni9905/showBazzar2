import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:show_bazzar/Screens/reset_password.dart';

import '../core/utils/constants/sizes.dart';
import '../core/utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems * 2,
            ),

            ///Text Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            ///Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const ResetPasswordScreen(),
                    ),
                  );
                },
                child: const Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
