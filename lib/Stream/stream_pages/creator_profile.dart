import 'package:flutter/material.dart';
import 'package:show_bazzar/Stream/stream_components/liveShows_tile.dart';

import 'package:show_bazzar/Stream/stream_components/stream_colors.dart';
import 'package:show_bazzar/Stream/streammodels/live_shows.dart';
import 'package:show_bazzar/Stream/streammodels/profile.dart';
import 'package:show_bazzar/Stream/streammodels/reels.dart';

class creatorProfilePage extends StatefulWidget {
  Profile profile;
  creatorProfilePage({super.key, required this.profile});

  @override
  State<creatorProfilePage> createState() => _creatorProfilePageState();
}

class _creatorProfilePageState extends State<creatorProfilePage> {
  Color videosColor = Colors.white;
  Color liveColor = Colors.red;
  bool isLiveSelected = true;
  //  function to select videos
  void selectReels() {
    setState(() {
      videosColor = Colors.red;
      liveColor = Colors.white;
      isLiveSelected = false;
    });
  }

  // function to select live stream
  void selectLive() {
    setState(() {
      videosColor = Colors.white;
      liveColor = Colors.red;
      isLiveSelected = true;
    });
  }

  // function for following
  void toogleFollowing() {
    setState(() {
      widget.profile.following = !widget.profile.following;
    });
  }

  List<LiveShows>? getLiveShowsForProfile(int uniqueId) {
    return showsList
        .where((element) =>
            element.profile.uniqueId == uniqueId && element.isLive == true)
        .toList();
  }

  List<LiveShows>? getVideosForProfile(int uniqueId) {
    return showsList
        .where((element) =>
            element.profile.uniqueId == uniqueId && element.isLive == false)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    List<LiveShows>? liveShowsListForProfile =
        getLiveShowsForProfile(widget.profile.uniqueId);
    List<LiveShows>? VideosListForProfile =
        getVideosForProfile(widget.profile.uniqueId);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: StremColors.streamBackground,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      backgroundColor: Color(0xFF070F2B),
      // top Container containing profile name, photo, followers, follow button
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipOval(
                      // image
                      child: Image.asset(
                        widget.profile.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 20)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // profile name , followers, follow button

                      Text(
                        truncatedProfileNameTitle(widget.profile.Name),
                        style: TextStyle(
                            fontSize: 30,
                            color: widget.profile.profleNameColor),
                      ),
                      Text(
                        '${widget.profile.followers.toString()}M+ Followers',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      ElevatedButton(
                        onPressed: toogleFollowing,
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(110, 20),
                          backgroundColor: widget.profile.following
                              ? Colors.red
                              : Colors.white,
                        ),
                        child: Text(
                          widget.profile.following ? 'Following' : 'Follow',
                          style: TextStyle(
                              color: widget.profile.following
                                  ? Colors.white
                                  : Colors.red),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    TextButton(
                      onPressed: selectLive,
                      child: Text(
                        'Live Stream',
                        style: TextStyle(
                            color: liveColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 2),
                      ),
                    ),
                    isLiveSelected
                        ? Container(
                            height: 5,
                            width: 100,
                            color: Colors.red,
                          )
                        : Container(),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: selectReels,
                          child: Text(
                            'Videos',
                            style: TextStyle(
                                color: videosColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 2),
                          )),
                      isLiveSelected
                          ? Container()
                          : Container(
                              height: 5,
                              width: 60,
                              color: Colors.red,
                            ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(10)),
            // shows Tiles
            SizedBox(
                width: 380,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: isLiveSelected
                      ? liveShowsListForProfile?.length
                      : VideosListForProfile?.length,
                  itemBuilder: (BuildContext context, int index) {
                    LiveShows liveShows = isLiveSelected
                        ? liveShowsListForProfile![index]
                        : VideosListForProfile![index];
                    return liveShowsTile(liveShows: liveShows);
                  },
                )),

            Padding(padding: const EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:show_bazzar/Stream/stream_components/stream_colors.dart';
// import 'package:show_bazzar/Stream/stream_pages/tabs/live_videosTab.dart';
// import 'package:show_bazzar/Stream/stream_pages/tabs/reelsTab.dart';
// import 'package:show_bazzar/Stream/streammodels/profile.dart';

// class creatorProfilePage extends StatefulWidget {
//   Profile profile;
//   creatorProfilePage({super.key, required this.profile});

//   @override
//   State<creatorProfilePage> createState() => _creatorProfilePageState();
// }

// class _creatorProfilePageState extends State<creatorProfilePage> {
//   final List<Widget> tabBarViews = [
//     LiveVideosViews(profile: profiles[0]),
//     VideosView(
//       profile: profiles[0],
//     ),
//   ];

//   // function for following
//   void toogleFollowing() {
//     setState(() {
//       widget.profile.following = !widget.profile.following;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           iconTheme: IconThemeData(color: Colors.white),
//           backgroundColor: StremColors.streamBackground,
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.search,
//                   color: Colors.white,
//                 )),
//           ],
//         ),
//         backgroundColor: StremColors.streamBackground,
//         body: ListView(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 20.0, right: 5, bottom: 20, top: 20),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 100,
//                     height: 100,
//                     child: ClipOval(
//                       // image
//                       child: Image.asset(
//                         widget.profile.imagePath,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Padding(padding: const EdgeInsets.only(left: 20)),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       // profile name , followers, follow button

//                       Text(
//                         truncatedProfileNameTitle(widget.profile.Name),
//                         style: TextStyle(
//                             fontSize: 30,
//                             color: widget.profile.profleNameColor),
//                       ),
//                       Text(
//                         '${widget.profile.followers.toString()}M+ Followers',
//                         style: TextStyle(fontSize: 15, color: Colors.grey),
//                       ),
//                       ElevatedButton(
//                         onPressed: toogleFollowing,
//                         style: ElevatedButton.styleFrom(
//                           fixedSize: Size(110, 20),
//                           backgroundColor: widget.profile.following
//                               ? Colors.red
//                               : Colors.white,
//                         ),
//                         child: Text(
//                           widget.profile.following ? 'Following' : 'Follow',
//                           style: TextStyle(
//                               color: widget.profile.following
//                                   ? Colors.white
//                                   : Colors.red),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             TabBar(tabs: [
//               Tab(
//                 icon: Icon(Icons.live_tv_outlined),
//               ),
//               Tab(
//                 icon: Icon(Icons.home),
//               )
//             ]),
//             SizedBox(height: 10000, child: TabBarView(children: tabBarViews))
//           ],
//         ),
//       ),
//     );
//   }
// }

String truncatedProfileNameTitle(String name) {
  const l = 15;
  if (name.length <= l) {
    return name;
  } else {
    return '${name.substring(0, l)}...';
  }
}
