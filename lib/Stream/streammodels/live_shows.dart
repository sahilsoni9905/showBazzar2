import 'package:show_bazzar/Stream/streammodels/profile.dart';
import 'package:show_bazzar/Stream/streammodels/stream_category.dart';

class LiveShows {
  String imagePath;
  String title;
  Profile profile;
  String viewCount;
  streamCategory strCategory;
  bool isLive;
  String videoPath;

  LiveShows(
      {required this.imagePath,
      required this.profile,
      required this.title,
      required this.viewCount,
      required this.strCategory,
      required this.isLive,
      required this.videoPath});
}

List<LiveShows> showsList = [
  LiveShows(
      imagePath: 'lib/Stream/images/live/1.jpg',
      profile: profiles[0],
      title: 'Cat Cafe Stufio along with Hooted Ice',
      viewCount: '300K+ Watching',
      strCategory: standUp,
      isLive: true,
      videoPath: 'lib/Stream/videos/1.mp4'),
  LiveShows(
      imagePath: 'lib/Stream/images/live/2.jpg',
      profile: profiles[1],
      title: 'Arijit Singh Live Concert',
      viewCount: '300K+ Watching',
      strCategory: concert,
      isLive: true,
      videoPath: 'lib/Stream/videos/1.mp4'),
  LiveShows(
      imagePath: 'lib/Stream/images/live/3.jpg',
      profile: profiles[2],
      title: 'Quick style india tour',
      viewCount: '300K+ Watching',
      strCategory: popular,
      isLive: true,
      videoPath: 'lib/Stream/videos/1.mp4'),
  LiveShows(
      imagePath: 'lib/Stream/images/live/4.jpg',
      profile: profiles[3],
      title: 'Born on Mars',
      viewCount: '300K+ Watching',
      strCategory: comedyShow,
      isLive: true,
      videoPath: 'lib/Stream/videos/1.mp4'),
  LiveShows(
      imagePath: 'lib/Stream/images/live/5.jpg',
      profile: profiles[4],
      title: 'Bas Kar Bassi',
      viewCount: '300K+ Watching',
      strCategory: standUp,
      isLive: true,
      videoPath: 'lib/Stream/videos/1.mp4'),
  LiveShows(
      imagePath: 'lib/Stream/images/live/6.jpeg',
      profile: profiles[5],
      title: 'CHILL Stream',
      viewCount: '300K+ Watching',
      strCategory: liveGaming,
      isLive: true,
      videoPath: 'lib/Stream/videos/1.mp4'),
  LiveShows(
      imagePath: 'lib/Stream/images/live/6.jpeg',
      profile: profiles[5],
      title: 'CHILL Stream',
      viewCount: '300K+ Watching',
      strCategory: liveGaming,
      isLive: false,
      videoPath: 'lib/Stream/videos/1.mp4'),
];

void addToCategoryList(List<LiveShows> liveShowsList) {
  for (int i = 0; i < liveShowsList.length; i++) {
    liveShowsList[i].strCategory.catList.add(liveShowsList[i]);
  }
}

List<LiveShows>? fetchLiveShowList() {
  List<LiveShows>? liveShowsList = [];
  for (int i = 0; i < showsList.length; i++) {
    if (showsList[i].isLive == true) {
      liveShowsList.add(showsList[i]);
    }
  }
  return liveShowsList;
}

List<LiveShows>? fetchVideosList() {
  List<LiveShows>? videosList = [];
  for (int i = 0; i < showsList.length; i++) {
    if (showsList[i].isLive == false) {
      videosList.add(showsList[i]);
    }
  }
  return videosList;
}

// List<LiveShows>? fetchLiveShowsListForProfile(int uniqueId) {
//   List<LiveShows>? liveShowsList = [];
//   for (int i = 0; i < showsList.length; i++) {
//     if (showsList[i].isLive == true &&
//         showsList[i].profile.uniqueId == uniqueId) {
//       liveShowsList.add(showsList[i]);
//     }
//   }
//   return liveShowsList;
// }

// List<LiveShows>? fetchVideosListForProfile(Profile uniqueId) {
//   List<LiveShows>? videosList = [];
//   for (int i = 0; i < showsList.length; i++) {
//     if (showsList[i].isLive == true &&
//         showsList[i].profile.uniqueId == uniqueId) {
//       videosList.add(showsList[i]);
//     }
//   }
//   return videosList;
// }
