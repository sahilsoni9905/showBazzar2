import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/Stream/stream_pages/creator_profile.dart';
import 'package:show_bazzar/Stream/streammodels/live_shows.dart';
import 'package:show_bazzar/Stream/streammodels/profile.dart';
import 'package:show_bazzar/Stream/streammodels/reels.dart';

import 'package:show_bazzar/reels/reel_side_actionBar.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  LiveShows liveShows;
  VideoPlayerScreen({Key? key, required this.liveShows}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  void toogleFollowing() {
    setState(() {
      widget.liveShows.profile.following = !widget.liveShows.profile.following;
    });
  }

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    String videoP = widget
        .liveShows.videoPath; // Replace with the actual path to your video file
    _controller = VideoPlayerController.asset(videoP);
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 70, 67, 67),
      body: SafeArea(
        child: PageView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // avatar , name , viewers , follow button , cross button

                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          // profile Image
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => creatorProfilePage(
                                        profile: widget.liveShows.profile)),
                              );
                            },
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  widget.liveShows.profile.imagePath),
                              radius: 30,
                            ),
                          ),

                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // user name

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            creatorProfilePage(
                                                profile:
                                                    widget.liveShows.profile)),
                                  );
                                },
                                child: Text(
                                  truncatedNameTitle(
                                      widget.liveShows.profile.Name),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const Text(
                                '300K+ Viewers',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: toogleFollowing,
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(93, 10),
                      backgroundColor: widget.liveShows.profile.following
                          ? Colors.red
                          : Colors.white,
                    ),
                    child: FittedBox(
                      child: Text(
                        widget.liveShows.profile.following
                            ? 'Following'
                            : 'Follow',
                        style: TextStyle(
                            fontSize: 10,
                            color: widget.liveShows.profile.following
                                ? Colors.white
                                : Colors.red),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.cancel,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              // const SizedBox(
              //   height: 150,
              // ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    });
                  },
                  child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 60,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Flexible(
                      flex: 14,
                      child: Container(
                        width: 330,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  // profile Image
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(profiles[2].imagePath),
                                    radius: 25,
                                  ),

                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // user name

                                      Text(
                                        'BeHappy',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'Awesome',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  // profile Image
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(profiles[1].imagePath),
                                    radius: 25,
                                  ),

                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // user name

                                      Text(
                                        'Abhinandan',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'Great',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  // profile Image
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(profiles[0].imagePath),
                                    radius: 25,
                                  ),

                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // user name

                                      Text(
                                        'ComedyKing',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'G.O.A.T',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  // profile Image
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(profiles[4].imagePath),
                                    radius: 25,
                                  ),

                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // user name

                                      Text(
                                        'RedMage',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'SPAM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Flexible(
                        flex: 2, child: ReelSideActionBar(reel: reels[0])),
                  )
                ],
              )
            ],
          ),
        ]),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       if (_controller.value.isPlaying) {
      //         _controller.pause();
      //       } else {
      //         _controller.play();
      //       }
      //     });
      //   },
      //   child: Icon(
      //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //   ),
      // ),
    );
  }
}

String truncatedNameTitle(String name) {
  const l = 8;
  if (name.length <= l) {
    return name;
  } else {
    return '${name.substring(0, l)}...';
  }
}
