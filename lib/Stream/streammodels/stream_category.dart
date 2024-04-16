import 'package:flutter/foundation.dart';
import 'package:show_bazzar/Stream/streammodels/live_shows.dart';
import 'package:show_bazzar/Stream/streammodels/profile.dart';

class streamCategory {
  String categoryName;
  List<LiveShows> catList;
  streamCategory({required this.categoryName, required this.catList});
}

streamCategory popular = streamCategory(
  categoryName: 'Popular',
  catList: popularList,
);
List<LiveShows> popularList = [];
streamCategory standUp =
    streamCategory(categoryName: 'Stand Up', catList: standUpList);
List<LiveShows> standUpList = [];
streamCategory concert =
    streamCategory(categoryName: 'Concert', catList: concertList);
List<LiveShows> concertList = [];
streamCategory comedyShow =
    streamCategory(categoryName: 'Comedy Show', catList: comedyShowList);
List<LiveShows> comedyShowList = [];
streamCategory liveGaming =
    streamCategory(categoryName: 'Gaming', catList: liveGamingList);
List<LiveShows> liveGamingList = [];

List<streamCategory> categoryList = [
  popular,
  standUp,
  concert,
  comedyShow,
  liveGaming
];
