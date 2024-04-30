import 'package:show_bazzar/Stream/streammodels/profile.dart';

class Reel {
  final Profile user;
  final String imageUrl;
  final String audioTirle;
  final String caption;
  String totlaLikes;
  String totalComments;
  bool isLiked;
  final bool isTagged;
  final String postedBy;

  Reel({
    required this.user,
    required this.imageUrl,
    required this.audioTirle,
    required this.caption,
    required this.totlaLikes,
    required this.totalComments,
    required this.isLiked,
    required this.isTagged,
    required this.postedBy,
  });
}

final List<Reel> reels = [
  Reel(
    postedBy: 'lib/Stream/images/Profile/2.png',
    user: profiles[0],
    imageUrl: 'lib/Stream/images/reels/1.jpg',
    audioTirle: 'title 1',
    caption:
        'Step into Style: Unleash your inner athlete with our sleek and durable sneakers, designed for ultimate comfort and peak performance. Experience the perfect blend of fashion and functionality for your active lifestyle.',
    totlaLikes: '3.4K',
    totalComments: '178',
    isLiked: false,
    isTagged: false,
  ),
  Reel(
      postedBy: 'lib/Stream/images/Profile/3.png',
      user: profiles[1],
      imageUrl: 'lib/Stream/images/reels/2.jpg',
      audioTirle: 'title 2',
      caption:
          "Elevate Your Style: Discover our range of men's suits, tailored to perfection for a sophisticated and polished look. Combining classic style with modern design, our suits offer unmatched comfort and versatility for any occasion. Experience the perfect blend of fashion and function for your professional lifestyle.",
      totlaLikes: '9.4K',
      totalComments: '178',
      isLiked: false,
      isTagged: false),
  Reel(
      postedBy: 'lib/Stream/images/Profile/4.png',
      user: profiles[2],
      imageUrl: 'lib/Stream/images/reels/3.jpg',
      audioTirle: 'title 3',
      caption:
          'Transform Your Workspace: Elevate your productivity with a sleek and functional multi-computer setup designed for seamless workflow efficiency and professional performance. Experience the perfect blend of technology and style for your modern workspace.',
      totlaLikes: '3.4K',
      totalComments: '573',
      isLiked: false,
      isTagged: false),
  Reel(
      postedBy: 'lib/Stream/images/Profile/5.png',
      user: profiles[3],
      imageUrl: 'lib/Stream/images/reels/4.jpg',
      audioTirle: 'title 4',
      caption:
          'Unforgettable Magic: Witness the electrifying energy and breathtaking artistry of our performers as they ignite the stage with an unforgettable concert experience. Immerse yourself in a world of captivating music and unforgettable moments that will leave you breathless and craving more.',
      totlaLikes: '7.6k',
      totalComments: '748',
      isLiked: false,
      isTagged: false),
  Reel(
      postedBy: 'lib/Stream/images/Profile/6.png',
      user: profiles[4],
      imageUrl: 'lib/Stream/images/reels/5.jpg',
      audioTirle: 'title 5',
      caption:
          'Innovation Meets Design: Discover the world of Apple, where creativity meets technology to bring you the most advanced and intuitive devices that seamlessly integrate into your daily life. Experience the perfect blend of innovation, design, and functionality for your digital world.',
      totlaLikes: '5.8K',
      totalComments: '290',
      isLiked: false,
      isTagged: false),
];
