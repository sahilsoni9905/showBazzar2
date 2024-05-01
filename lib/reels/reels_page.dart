import 'package:flutter/material.dart';

import 'package:show_bazzar/Stream/streammodels/reels.dart';

import 'package:show_bazzar/reels/reel_side_actionBar.dart';
import 'package:show_bazzar/reels/reels_details.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          'Reels',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.photo_camera_back_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: reels.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(reels[index].imageUrl))),
              child: Center(
                  child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.transparent
                        ],
                            begin: const Alignment(0, -0.75),
                            end: const Alignment(0, 0.1))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.transparent
                        ],
                            end: const Alignment(0, -0.75),
                            begin: const Alignment(0, 0.1))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                              flex: 14,
                              child: ReelsDetails(
                                reel: reels[index],
                              )),
                          Flexible(
                              flex: 2,
                              child: ReelSideActionBar(
                                reel: reels[index],
                              )),
                        ],
                      )
                    ],
                  )
                ],
              )),
            );
          }),
    );
  }
}
