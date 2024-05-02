// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:show_bazzar/Stream/streammodels/profile.dart';
// import 'package:show_bazzar/Stream/streammodels/reels.dart';
// import 'package:show_bazzar/reels/reels_page.dart';

// class ReelsView extends StatefulWidget {
//   Profile profile;
//   ReelsView({super.key, required this.profile});

//   @override
//   State<ReelsView> createState() => _ReelsViewState();
// }

// class _ReelsViewState extends State<ReelsView> {
//   List<Reel>? getReelsForProfile(int uniqueId) {
//     return reels.where((element) => element.user.uniqueId == uniqueId).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Reel>? reelsListForProfile =
//         getReelsForProfile(widget.profile.uniqueId);
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 5.0),
//       child: MasonryGridView.builder(
//           physics: NeverScrollableScrollPhysics(),
//           gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2),
//           itemCount: reelsListForProfile!.length,
//           itemBuilder: (context, index) {
//             Reel reel = reelsListForProfile[index];
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(4),
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => ReelsPage()),
//                     );
//                   },
//                   child: Container(
//                       height: 280,
//                       width: 100,
//                       child: Image.asset(
//                         reel.imageUrl,
//                         fit: BoxFit.fill,
//                       )),
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
