import 'package:flutter/material.dart';

// ignore: camel_case_types
class liveStreamingPage extends StatefulWidget {
  const liveStreamingPage({super.key});

  @override
  State<liveStreamingPage> createState() => _liveStreamingPageState();
}

// ignore: camel_case_types
class _liveStreamingPageState extends State<liveStreamingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: const Center(child: Text('Available Soon')),
    );
  }
}
