import 'package:flutter/material.dart';

import 'package:show_bazzar/Stream/stream_pages/podcastPage.dart';
import 'package:show_bazzar/Stream/streammodels/podcasts.dart';

class podcastItem extends StatelessWidget {
  Podcasts podcasts;
  podcastItem({super.key, required this.podcasts});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      // color: Colors.white,

      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 3, 10, 36),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PodcastPage(
                          podcast: podcasts,
                        )),
              );
            },
            child: SizedBox(
              width: 150,
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  podcasts.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(truncatePodcastTitle(podcasts.title),
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13)),
          Row(
            children: [
              const Text(
                'Show • ',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              Text(podcasts.uploaderName,
                  style: const TextStyle(color: Colors.grey, fontSize: 13))
            ],
          )
        ],
      ),
    );
  }
}

String truncatePodcastTitle(String name) {
  const int maxLength = 20;
  if (name.length <= maxLength) {
    return name;
  } else {
    return '${name.substring(0, maxLength)}...';
  }
}
