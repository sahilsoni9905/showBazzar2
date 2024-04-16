import 'package:flutter/material.dart';

class Podcasts {
  String imagePath;
  String title;
  String uploaderName;

  Podcasts(
      {required this.imagePath,
      required this.uploaderName,
      required this.title});
}

List<Podcasts> podcastsList = [
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/1.jpg',
      uploaderName: 'Smart Casts',
      title: 'Yeh Podcast Vodcast kya hot hai'),
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/2.jpg',
      uploaderName: 'Puja Darshan',
      title: 'The taste of india'),
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/3.webp',
      uploaderName: 'Sangeeta Pilai',
      title: 'Masala Podcast'),
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/4.jpg',
      uploaderName: 'Sumedh Bhilgi',
      title: 'Indian Cricket Podcast'),
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/5.jpg',
      uploaderName: 'India Today',
      title: 'In our defense'),
  Podcasts(
      imagePath: 'lib/Stream/images/podcasts/6.jpg',
      uploaderName: 'India Today',
      title: 'Sleding Room')
];
