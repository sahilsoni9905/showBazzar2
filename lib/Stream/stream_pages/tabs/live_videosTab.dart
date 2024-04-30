import 'package:flutter/material.dart';
import 'package:show_bazzar/Stream/stream_components/liveShows_tile.dart';
import 'package:show_bazzar/Stream/streammodels/live_shows.dart';
import 'package:show_bazzar/Stream/streammodels/profile.dart';

class LiveVideosViews extends StatefulWidget {
  Profile profile;
  LiveVideosViews({super.key, required this.profile});

  @override
  State<LiveVideosViews> createState() => _LiveVideosViewsState();
}

class _LiveVideosViewsState extends State<LiveVideosViews> {
  List<LiveShows>? getLiveShowsForProfile(int uniqueId) {
    return showsList
        .where((element) =>
            element.profile.uniqueId == uniqueId && element.isLive == true)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    List<LiveShows>? liveShowsListForProfile =
        getLiveShowsForProfile(widget.profile.uniqueId);
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: liveShowsListForProfile?.length,
      itemBuilder: (BuildContext context, int index) {
        LiveShows liveShows = liveShowsListForProfile![index];
        return liveShowsTile(liveShows: liveShows);
      },
    );
  }
}
