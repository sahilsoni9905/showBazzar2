import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/Stream/stream_components/stream_colors.dart';
import 'package:show_bazzar/Stream/stream_pages/creator_profile.dart';
import 'package:show_bazzar/Stream/stream_pages/player2.dart';
import 'package:show_bazzar/Stream/stream_pages/streaming_page.dart';
import 'package:show_bazzar/Stream/streammodels/live_shows.dart';

class liveShowsTile extends StatelessWidget {
  LiveShows liveShows;
  liveShowsTile({super.key, required this.liveShows});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: StremColors.streamBackground,
      ),
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 180,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) =>
                //           streamingPage(profile: liveShows.profile)),
                // );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VideoPlayerScreen(
                              liveShows: liveShows,
                            )));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  liveShows.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              creatorProfilePage(profile: liveShows.profile)),
                    );
                  },
                  child: Container(
                    width: liveShows.profile.profileIconSize,
                    child: ClipOval(
                      child: Image.asset(
                        liveShows.profile.imagePath,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      truncatedLiveNowTitle(liveShows.title),
                      softWrap: true,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      '${liveShows.profile.Name} is Live',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 160, 154, 154)),
                    ),
                    Text(liveShows.viewCount,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 160, 154, 154)))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

String truncatedLiveNowTitle(String name) {
  const l = 27;
  if (name.length <= l) {
    return name;
  } else {
    return '${name.substring(0, l)}...';
  }
}
