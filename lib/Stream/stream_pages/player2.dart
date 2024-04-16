import 'dart:io';

import 'package:flutter/material.dart';
import 'package:show_bazzar/Stream/streammodels/live_shows.dart';
import 'package:show_bazzar/Stream/streammodels/profile.dart';
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
      backgroundColor: Color.fromARGB(255, 70, 67, 67),
      // appBar: AppBar(title: Text('${widget.liveShows.profile.Name} is Live')),
      // body: Center(
      //   child: FutureBuilder(
      //     future: _initializeVideoPlayerFuture,
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         return AspectRatio(
      //           aspectRatio: _controller.value.aspectRatio,
      //           child: VideoPlayer(_controller),
      //         );
      //       } else {
      //         return const CircularProgressIndicator();
      //       }
      //     },
      //   ),
      // ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // avatar , name , viewers , follow button , cross button

                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          // profile Image
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(widget.liveShows.profile.imagePath),
                            radius: 30,
                          ),

                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // user name

                              Text(
                                truncatedNameTitle(widget.liveShows.profile.Name),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
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
                      fixedSize: Size(93, 10),
                      backgroundColor: widget.liveShows.profile.following
                          ? Colors.red
                          : Colors.white,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              Center(
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
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
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
