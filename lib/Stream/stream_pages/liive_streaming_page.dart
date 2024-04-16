import 'package:flutter/material.dart';

class liveStreamingPage extends StatefulWidget {
  const liveStreamingPage({super.key});

  @override
  State<liveStreamingPage> createState() => _liveStreamingPageState();
}

class _liveStreamingPageState extends State<liveStreamingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(child: Text('Available Soon')),
    );
  }
}
