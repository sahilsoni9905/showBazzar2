import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:show_bazzar/Stream/stream_pages/creator_profile.dart';
import 'package:show_bazzar/Stream/streammodels/reels.dart';

class ReelsDetails extends StatefulWidget {
  const ReelsDetails({super.key, required this.reel});
  final Reel reel;

  @override
  State<ReelsDetails> createState() => _ReelsDetailsState();
}

class _ReelsDetailsState extends State<ReelsDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              creatorProfilePage(profile: widget.reel.user)),
                    );
                  },
                  child: Text(
                    '${widget.reel.user.Name}   ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        widget.reel.user.following =
                            !widget.reel.user.following;
                      });
                    },
                    child: widget.reel.user.following
                        ? Text(
                            'following',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        : Text(
                            'follow',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ))
              ],
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          creatorProfilePage(profile: widget.reel.user)),
                );
              },
              child: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(widget.reel.user.imagePath),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ExpandableText(
              widget.reel.caption,
              style: TextStyle(
                  fontSize: 12.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
              expandText: 'more',
              collapseText: 'less',
              expandOnTextTap: true,
              collapseOnTextTap: true,
              maxLines: 1,
              linkColor: Colors.grey,
            ),
          ),
          ListTile(
              dense: true,
              minLeadingWidth: 0,
              horizontalTitleGap: 5,
              title: Text(
                '${widget.reel.audioTirle}- original music',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.graphic_eq_outlined,
                size: 16,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
