import 'package:flutter/material.dart';

class Profile {
  String imagePath;
  int uniqueId;
  String Name;
  double profileIconSize;
  double profileNameSize;
  Color profleNameColor;
  double followers;
  bool following;

  Profile(
      {required this.Name,
      required this.uniqueId,
      required this.imagePath,
      required this.profileIconSize,
      required this.profileNameSize,
      required this.profleNameColor,
      required this.followers,
      required this.following});
}

List<Profile> profiles = [
  Profile(
      Name: 'Abhishek Upmanyu',
      uniqueId: 00001,
      imagePath: 'lib/Stream/images/Profile/1.png',
      profileIconSize: 50,
      profileNameSize: 13,
      profleNameColor: Colors.white,
      followers: 10,
      following: false),
  Profile(
      Name: 'Arijit Singh',
      uniqueId: 00002,
      imagePath: 'lib/Stream/images/Profile/2.png',
      profileIconSize: 50,
      profileNameSize: 13,
      profleNameColor: Colors.white,
      followers: 10,
      following: false),
  Profile(
      Name: 'Quick Style',
      uniqueId: 00003,
      imagePath: 'lib/Stream/images/Profile/3.png',
      profileIconSize: 50,
      profileNameSize: 13,
      profleNameColor: Colors.white,
      followers: 10,
      following: false),
  Profile(
      Name: 'Sorabh Pant',
      uniqueId: 00004,
      imagePath: 'lib/Stream/images/Profile/4.png',
      profileIconSize: 50,
      profileNameSize: 13,
      profleNameColor: Colors.white,
      followers: 10,
      following: false),
  Profile(
      Name: 'Annubhav Singh Bassi',
      uniqueId: 00005,
      imagePath: 'lib/Stream/images/Profile/5.png',
      profileIconSize: 50,
      profileNameSize: 13,
      profleNameColor: Colors.white,
      followers: 10,
      following: false),
  Profile(
      Name: 'Honey',
      uniqueId: 00006,
      imagePath: 'lib/Stream/images/Profile/6.png',
      profileIconSize: 50,
      profileNameSize: 13,
      profleNameColor: Colors.white,
      followers: 10,
      following: false),
  Profile(
      Name: 'Pritam',
      uniqueId: 00007,
      imagePath: 'lib/Stream/images/Profile/7.png',
      profileIconSize: 50,
      profileNameSize: 13,
      profleNameColor: Colors.white,
      followers: 10,
      following: false),
];

String truncateProfileName(String name) {
  const int maxLength = 6;
  if (name.length <= maxLength) {
    return name;
  } else {
    return '${name.substring(0, maxLength)}...';
  }
}
