import 'package:flutter/material.dart';
import 'package:show_bazzar/Settings/global_vaiables.dart';
import 'package:show_bazzar/Settings/my_profile/widgets/custom_text_field2.dart';

class editProfileScreen extends StatelessWidget {
  static const routeName = '/edit-profile-screen';
  final profileSubmit = GlobalKey<FormState>();
  TextEditingController firstName_controller = TextEditingController();
  TextEditingController lastName_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController phoneNumber_controller = TextEditingController();
  TextEditingController county_controller = TextEditingController();
  TextEditingController gender_controller = TextEditingController();
  TextEditingController address_controller = TextEditingController();

  editProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: backGroundColor,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: profileSubmit,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomTextField2(
                  controller: firstName_controller,
                  hintText: 'First name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField2(
                  controller: lastName_controller,
                  hintText: 'Last name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField2(
                  controller: email_controller,
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField2(
                  controller: phoneNumber_controller,
                  hintText: 'Phone number',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.4,
                      child: DropdownButtonFormField<String>(
                        value: null,
                        onChanged: (newValue) {
                          // Handle country selection
                        },
                        items: <String>['India', 'USA', 'Russia']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                            hintText: 'Country',
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      child: DropdownButtonFormField<String>(
                        value: null,
                        onChanged: (newValue) {
                          // Handle gender selection
                        },
                        items: <String>['Male', 'Female', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Gender',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField2(
                  controller: address_controller,
                  hintText: 'Address',
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Submit',
                          style:
                              TextStyle(color: Color.fromARGB(255, 72, 9, 128)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
