import 'package:flutter/material.dart';

import 'package:show_bazzar/Settings/bottom_bar.dart';
import 'package:show_bazzar/Stream/stream_components/category_tile.dart';
import 'package:show_bazzar/Stream/stream_components/liveShows_tile.dart';
import 'package:show_bazzar/Stream/stream_components/podcast_item.dart';
import 'package:show_bazzar/Stream/stream_components/profile_tile.dart';
import 'package:show_bazzar/Stream/stream_components/stream_colors.dart';

import 'package:show_bazzar/Stream/stream_pages/start_live_streamPage.dart';
import 'package:show_bazzar/Stream/streammodels/live_shows.dart';
import 'package:show_bazzar/Stream/streammodels/podcasts.dart';
import 'package:show_bazzar/Stream/streammodels/profile.dart';
import 'package:show_bazzar/Stream/streammodels/stream_category.dart';

class StreamWatchPage extends StatefulWidget {
  const StreamWatchPage({super.key});

  @override
  State<StreamWatchPage> createState() => _StreamWatchPageState();
}

class _StreamWatchPageState extends State<StreamWatchPage> {
  Color bazzarColor = Colors.white;
  Color streamColor = Colors.red;
  bool isStreamSelected = false;
  void selectStream() {
    setState(() {
      streamColor = Colors.red;
      bazzarColor = Colors.white;
      isStreamSelected = false;
    });
  }

  // function to select live stream
  void selectBazzar() {
    setState(() {
      streamColor = Colors.white;
      bazzarColor = Colors.red;
      isStreamSelected = true;
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const bottomBar(),
        ),
      );
    });
  }

  int selectedCategoryIndex = -1;
  List<LiveShows>? liveShowsList = fetchLiveShowList();
  List<LiveShows>? toShowList = fetchLiveShowList();
  List<LiveShows>? returnSelectedCategory(streamCategory streamCat) {
    List<LiveShows> tempList = [];
    for (int i = 0; i < liveShowsList!.length; i++) {
      if (liveShowsList![i].strCategory == streamCat) {
        tempList.add(liveShowsList![i]);
      }
    }
    return tempList;
  }

  void addToCategoryList(List<LiveShows> liveShowsList) {
    for (int i = 0; i < liveShowsList.length; i++) {
      liveShowsList[i].strCategory.catList.add(liveShowsList[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StremColors.streamBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(children: [
                    TextButton(
                      onPressed: () {
                        selectBazzar();
                      },
                      child: Text(
                        'Bazzar',
                        style: TextStyle(
                            color: bazzarColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 2),
                      ),
                    ),
                    isStreamSelected
                        ? Container(
                            height: 2,
                            width: 100,
                            color: Colors.red,
                          )
                        : Container(),
                  ]),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          selectStream();
                        },
                        child: Text(
                          'Stream',
                          style: TextStyle(
                              color: streamColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 2),
                        ),
                      ),
                      isStreamSelected
                          ? Container()
                          : Container(
                              height: 2,
                              width: 60,
                              color: Colors.red,
                            ),
                    ],
                  ),
                ],
              ),
            ),

            // Top Channels
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Top Channels',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    // Text(
                    //   'See all',
                    //   style: TextStyle(color: Colors.blue, fontSize: 10),
                    // )
                  ]),
            ),

            // Profile Images

            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: profiles.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    Profile profile = profiles[index];
                    return ProfileTile(profile: profile);
                  }),
            ),

            // Podcasts

            const Padding(
              padding: EdgeInsets.only(bottom: 12, left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Podcasts',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    // Text(
                    //   'See all',
                    //   style: TextStyle(color: Colors.blue, fontSize: 15),
                    // )
                  ]),
            ),

            // Podcasts tile

            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: podcastsList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContextcontext, int index) {
                    // create podcast item
                    Podcasts podcasts = podcastsList[index];
                    return podcastItem(podcasts: podcasts);
                  }),
            ),

            // categories
            const Padding(
              padding: EdgeInsets.only(bottom: 12, left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    // Text(
                    //   'See all',
                    //   style: TextStyle(color: Colors.blue, fontSize: 15),
                    // )
                  ]),
            ),

            // categories tile
            Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 20),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          if (selectedCategoryIndex == index) {
                            setState(() {
                              selectedCategoryIndex = -1;
                              toShowList = liveShowsList;
                            });
                          } else {
                            setState(() {
                              selectedCategoryIndex = index;
                              toShowList =
                                  returnSelectedCategory(categoryList[index]);
                            });
                          }
                        },
                        child: categoriesTile(
                            category: categoryList[index],
                            isSelected: selectedCategoryIndex == index),
                      );
                    }),
              ),
            ),

            // live tiles
            const Padding(
              padding: EdgeInsets.only(bottom: 12, left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Live Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    // Text(
                    //   'See all',
                    //   style: TextStyle(color: Colors.blue, fontSize: 15),
                    // )
                  ]),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                width: 380,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: toShowList?.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    // create liveshow item

                    LiveShows liveShows = toShowList![index];

                    return liveShowsTile(liveShows: liveShows);
                  },
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(30))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here when the button is pressed
          // For example, you can show a Snackbar
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const startLiveScreenPage(),
            ),
          );

          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text('Floating Action Button Pressed')),
          // );
        },
        backgroundColor: const Color(0xFF6552FE),
        hoverElevation: 100,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
