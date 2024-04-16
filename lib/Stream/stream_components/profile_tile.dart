import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/Stream//stream_components/stream_colors.dart';
import 'package:show_bazzar/Stream/stream_pages/creator_profile.dart';
import 'package:show_bazzar/Stream/streammodels/profile.dart';

class ProfileTile extends StatelessWidget {
  Profile profile;
  ProfileTile({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      decoration: const BoxDecoration(color: StremColors.streamBackground),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => creatorProfilePage(profile: profile)),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: profile.profileIconSize,
              child: ClipOval(
                child: Image.asset(
                  profile.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              truncateProfileName(profile.Name),
              style: TextStyle(
                  fontSize: profile.profileNameSize,
                  color: profile.profleNameColor),
            )
          ],
        ),
      ),
    );
  }
}
