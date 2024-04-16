import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:show_bazzar/Stream/stream_components/custom_text_field.dart';
import 'package:show_bazzar/Stream/stream_pages/liive_streaming_page.dart';

class startLiveScreenPage extends StatefulWidget {
  const startLiveScreenPage({super.key});

  @override
  State<startLiveScreenPage> createState() => _startLiveScreenPageState();
}

class _startLiveScreenPageState extends State<startLiveScreenPage> {
  final TextEditingController _titleController = TextEditingController();

  String? imagePath;
  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text('Start Streaming'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: customTextField(controller: _titleController),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: imagePath != null
                          ? Image.file(File(imagePath!))
                          : DottedBorder(
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(10),
                              dashPattern: const [10, 4],
                              strokeCap: StrokeCap.round,
                              color: Color(0xFF6552FE),
                              child: Container(
                                width: double.infinity,
                                height: 150,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 206, 204, 222),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          _pickImageFromGallery();
                                        },
                                        icon: Icon(
                                          Icons.folder_open,
                                          color: Color(0xFF6552FE),
                                          size: 40,
                                        )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Select your Thumbnail',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(255, 79, 66, 66)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 300,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => liveStreamingPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF6552FE),
                        minimumSize: const Size(double.infinity, 40)),
                    child: Text(
                      'Go Live',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _pickImageFromGallery() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file != null) {
      imagePath = file.path;
      setState(() {

      });
    }
  }
}
