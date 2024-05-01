import 'package:flutter/material.dart';

final buttonColor = Color.fromARGB(225, 67, 52, 225);
final imageUrls = [
  'https://th.bing.com/th/id/OIP.fReQHPtzgT8m8dz4nnB2iAHaEn?w=308&h=192&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.fReQHPtzgT8m8dz4nnB2iAHaEn?w=308&h=192&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.fReQHPtzgT8m8dz4nnB2iAHaEn?w=308&h=192&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7',
];
final backGroundColor = Color.fromARGB(255, 16, 3, 60);
final shoesImageUrls = [
  'https://th.bing.com/th/id/OIP.2NN4P854ewUbK-WxH5fa7AHaDt?w=202&h=101&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.2NN4P854ewUbK-WxH5fa7AHaDt?w=202&h=101&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.2NN4P854ewUbK-WxH5fa7AHaDt?w=202&h=101&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.2NN4P854ewUbK-WxH5fa7AHaDt?w=202&h=101&c=7&r=0&o=5&dpr=1.3&pid=1.7',
];
final gridShoesImageUrls = [
  'https://th.bing.com/th?id=OIP.pDn6FW-FfAJna75wpXz1PgHaJl&w=219&h=284&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
  'https://th.bing.com/th?id=OIP.RLZ_UCZTkwiDlwiN0LyQ3QHaJQ&w=223&h=279&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
  'https://th.bing.com/th/id/OIP.7IBjD1ThUwBiti5HANk7egHaKe?w=202&h=286&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.TnhQL_jhhCT2Mwj7Dxp3RwHaN9?w=182&h=343&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.qzlOMLlKfmU5NLOuZeYNKgHaKH?w=202&h=277&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.bm9UcwE8LCpyQ5OFaAK7_wHaKd?w=202&h=286&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.JzRA4PAqbXBdv8INGyUH9QAAAA?w=202&h=296&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.lnbkLKDhylkOEAp6n_zuTAHaKa?w=202&h=285&c=7&r=0&o=5&dpr=1.3&pid=1.7',
];
final gridAppleImageUrls = [
  'https://static.techspot.com/images2/news/bigimage/2021/05/2021-05-18-image-27.jpg',
  'https://th.bing.com/th/id/OIP.V-6B8F2UXl5VBFAGJR4oMwAAAA?rs=1&pid=ImgDetMain',
  'https://th.bing.com/th/id/OIP.TaZ7apLZH-Zc1JNFG39QDAHaFj?rs=1&pid=ImgDetMain',
  'https://www.macworld.com/wp-content/uploads/2021/03/apple-watch-series-3-explorer-100737545-orig-4.jpg?quality=50&strip=all',
  'https://th.bing.com/th/id/OIP.61I0DvGRVGGA62QGjbUOcQHaEK?rs=1&pid=ImgDetMain',
  'https://images-na.ssl-images-amazon.com/images/I/81B6xdcxTpL._AC_SL1500_.jpg',
  'https://th.bing.com/th/id/OIP.jmxeJPhQP6vWelVND7SvBwHaHa?rs=1&pid=ImgDetMain'
];
final gridHpImageUrls = [
  'https://www.pcworld.com/wp-content/uploads/2022/12/hp_pavilion_gaming_laptop_lifestyle1_primary-100754492-orig.jpg?quality=50&strip=all',
  'https://d3e54emdgoy1fq.cloudfront.net/uploads/image_file/image/270867/large_d26be-HP-Cab-DHS-2101-Speakers-Subwoofer-HP-Multimedia-Speakers-with-Stereo-Sound-for-Multiple-Devices-3-5mm-jack-for-audio.jpg',
  'https://i5.walmartimages.com/asr/065a51e4-4a55-46f0-a04d-d2ac22fe59bb.9340e13687d78bd29d5698b6670c090f.jpeg?odnWidth=1000&odnHeight=1000&odnBg=ffffff',
  'https://th.bing.com/th/id/OIP.jALcXFbAZeyNSBRzjeuPSAHaE6?rs=1&pid=ImgDetMain',
  'https://th.bing.com/th/id/OIP.9TCPBWNaXts6TZosNufR7QHaHa?rs=1&pid=ImgDetMain',
  'https://th.bing.com/th/id/OIP.XNv_J97O3ly-HyI8qZIcGgHaHa?rs=1&pid=ImgDetMain',
  'https://th.bing.com/th/id/OIP.BrLQw6KTlg6kbNbj2TNLTQHaF7?rs=1&pid=ImgDetMain',
];
final listTopStoreImage = [
  'https://prod.cloud.rockstargames.com/crews/sc/8437/12192665/publish/emblem/emblem_512.png',
  'https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-apple-praised-after-new-product-reveal-investor-32.png',
  'https://static.vecteezy.com/system/resources/previews/022/101/041/original/hp-logo-transparent-free-png.png',
  'https://th.bing.com/th/id/OIP.lqao_2ss6PjNd9CYGLT9WgAAAA?rs=1&pid=ImgDetMain',
  'https://th.bing.com/th/id/OIP.lqao_2ss6PjNd9CYGLT9WgAAAA?rs=1&pid=ImgDetMain',
  'https://th.bing.com/th/id/OIP.lqao_2ss6PjNd9CYGLT9WgAAAA?rs=1&pid=ImgDetMain'
];
final listTopCategories = [
  'https://www.clipartmax.com/png/middle/262-2621895_cell-phone-clipart-transparent-mobile-logo-png-transparent-background.png',
  'https://th.bing.com/th/id/OIP.LNU7U4kgvKZIl3d1ueDWuAHaFm?rs=1&pid=ImgDetMain',
  'https://cdn.dribbble.com/users/2409752/screenshots/12869808/untitled-9_4x.jpg',
  'https://static.vecteezy.com/system/resources/previews/000/357/510/original/watch-vector-icon.jpg',
  'https://cdn.imgbin.com/6/19/16/imgbin-cosmetics-sephora-beauty-make-up-artist-makeup-brush-cosmetic-products-PswBQn2jS2GMg0ynQ6ZFKev7g.jpg',
  'https://cdn.imgbin.com/6/19/16/imgbin-cosmetics-sephora-beauty-make-up-artist-makeup-brush-cosmetic-products-PswBQn2jS2GMg0ynQ6ZFKev7g.jpg',
];
final listMobiles = [
  'https://th.bing.com/th/id/OIP.GN-gWD62pXGuA9vqDohrLwAAAA?rs=1&pid=ImgDetMain',
  'https://fscl01.fonpit.de/userfiles/7640001/image/best-high-end-smartphones/AndroidPIT-Best-High-End-Smartphones-Hero-1.jpg',
  'https://th.bing.com/th/id/OIP.xcir8By24sTDapPk8Y9jsgHaHa?rs=1&pid=ImgDetMain',
  'https://i5.walmartimages.com/asr/7fe14e55-dfad-4215-9251-be91dee24542.fb44fb0c013c276fa4010a75f0244660.jpeg',
  'https://th.bing.com/th/id/R.14f762018e3df4e2a7840468e4b7c74f?rik=ok42jyZKYNKtYQ&riu=http%3a%2f%2fwww.designerzcentral.com%2fwp-content%2fuploads%2f2020%2f05%2fSamsung-New-Galaxy-Smartphones.jpg&ehk=%2fwAv%2bVUdgiLF%2fovYXksWkA9D%2fMWF0qNGhOhdDl6dWmQ%3d&risl=&pid=ImgRaw&r=0',
  'https://gosmartway.com/wp-content/uploads/2021/04/cell-phones.png',
];
