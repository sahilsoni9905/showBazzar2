import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:show_bazzar/Stream/streammodels/profile.dart';

class streamingPage extends StatefulWidget {
  Profile profile;
  streamingPage({super.key, required this.profile});

  @override
  State<streamingPage> createState() => _streamingPageState();
}

class _streamingPageState extends State<streamingPage> {
  void toogleFollowing() {
    setState(() {
      widget.profile.following = !widget.profile.following;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 67, 67),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // avatar , name , viewers , follow button , cross button

                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: [
                      // profile Image
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.profile.imagePath),
                        radius: 30,
                      ),

                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // user name

                          Text(
                            truncatedNameTitle(widget.profile.Name),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '300K+ Viewers',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: toogleFollowing,
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(93, 10),
                    backgroundColor:
                        widget.profile.following ? Colors.red : Colors.white,
                  ),
                  child: Text(
                    widget.profile.following ? 'Following' : 'Follow',
                    style: TextStyle(
                        fontSize: 10,
                        color: widget.profile.following
                            ? Colors.white
                            : Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // profile Image
                          CircleAvatar(
                            backgroundImage: AssetImage(profiles[2].imagePath),
                            radius: 25,
                          ),

                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // user name

                              Text(
                                'BeHappy',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Awesome',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          // profile Image
                          CircleAvatar(
                            backgroundImage: AssetImage(profiles[1].imagePath),
                            radius: 25,
                          ),

                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // user name

                              Text(
                                'Abhinandan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Great',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          // profile Image
                          CircleAvatar(
                            backgroundImage: AssetImage(profiles[0].imagePath),
                            radius: 25,
                          ),

                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // user name

                              Text(
                                'ComedyKing',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'G.O.A.T',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          // profile Image
                          CircleAvatar(
                            backgroundImage: AssetImage(profiles[4].imagePath),
                            radius: 25,
                          ),

                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // user name

                              Text(
                                'RedMage',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'SPAM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String truncatedNameTitle(String name) {
  const l = 11;
  if (name.length <= l) {
    return name;
  } else {
    return '${name.substring(0, l)}...';
  }
}
