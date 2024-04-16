import 'package:flutter/material.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({Key? key}) : super(key: key);

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 40,
      child: //GenderPickerWithImage(onChanged: (Gender _gender){print(_gender)}, showOtherGender: true,),
      GenderPickerWithImage(
        showOtherGender: true,
        verticalAlignedText: true,
        selectedGender: Gender.Male,
        selectedGenderTextStyle:
        const TextStyle(color: Color(0xffe2f2fe), fontWeight: FontWeight.bold),
        unSelectedGenderTextStyle:
        const TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        onChanged: (gender) {
          print(gender);
        },
        equallyAligned: true,
        animationDuration: const Duration(milliseconds: 300),
        isCircular: true,
        // default : true,
        opacityOfGradient: 0.4,
        padding: const EdgeInsets.all(3),
        size: 50, //default : 40
      ),
    );
  }
}
