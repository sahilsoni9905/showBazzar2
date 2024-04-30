import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/Settings/my_profile/screens/my_profile_screen.dart';
import 'package:show_bazzar/Stream/streammodels/reels.dart';

class ReelSideActionBar extends StatefulWidget {
  Reel reel;
  ReelSideActionBar({super.key, required this.reel});

  @override
  State<ReelSideActionBar> createState() => _ReelSideActionBarState();
}

class _ReelSideActionBarState extends State<ReelSideActionBar> {
  final double _iconSize = 28;

  void LikeReel() {
    setState(() {
      widget.reel.isLiked = !widget.reel.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            LikeReel();
          },
          icon: Icon(widget.reel.isLiked
              ? Icons.favorite
              : Icons.favorite_border_outlined),
          iconSize: _iconSize,
          color: widget.reel.isLiked ? Colors.red : Colors.white,
        ),
        Text(
          widget.reel.totlaLikes,
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.chat_bubble_outline),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        Text(widget.reel.totalComments,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send_outlined),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const myProfile(),
              ),
            );
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('lib/Stream/images/Profile/1.png'))),
          ),
        )
      ],
    );
  }
}
