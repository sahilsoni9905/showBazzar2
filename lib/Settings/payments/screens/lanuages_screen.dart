import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';

class LanguageScreen extends StatefulWidget {
  static const routeName = '/language-screen';
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String selectdLanguage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text(
          'Language',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sugested',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w500),
            ),
            RadioListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'English (US)',
                style: TextStyle(color: Colors.white),
              ),
              value: 'UsEnglish',
              groupValue: selectdLanguage,
              onChanged: (String? value) {
                setState(() {
                  selectdLanguage = value!;
                });
              },
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'English (UK)',
                style: TextStyle(color: Colors.white),
              ),
              value: 'UkEnglish',
              groupValue: selectdLanguage,
              onChanged: (String? value) {
                setState(() {
                  selectdLanguage = value!;
                });
              },
              controlAffinity: ListTileControlAffinity.trailing,
            ),
          ],
        ),
      ),
    );
  }
}
