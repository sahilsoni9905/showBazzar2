import 'package:flutter/material.dart';

class Podcasts {
  String imagePath;
  String title;
  String uploaderName;
  String audioPath;

  Podcasts(
      {required this.imagePath,
      required this.uploaderName,
      required this.title,
      required this.audioPath});
}

final List<Podcasts> podcastsList = [
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/2.jpeg',
      uploaderName: 'Ranveer Allahabadia',
      title: 'My time in India vs Pakistan',
      audioPath: 'assets/audio/2.mp3'),
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/3.webp',
      uploaderName: 'Sangeeta Pilai',
      title: 'Masala Podcast',
      audioPath: 'assets/audio/3.mp3'),
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/4.jpg',
      uploaderName: 'Ranveer Allahabadia',
      title: 'Shiva Vs Vishnu',
      audioPath: 'assets/audio/1st.mp3'),
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/5.jpg',
      uploaderName: 'India Today',
      title: 'In our defense',
      audioPath: 'assets/audio/2.mp3'),
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/6.jpg',
      uploaderName: 'India Today',
      title: 'Sleding Room',
      audioPath: 'assets/audio/3.mp3')
];
