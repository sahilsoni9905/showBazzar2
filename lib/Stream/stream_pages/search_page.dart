import 'package:flutter/material.dart';
import 'package:show_bazzar/Stream/stream_components/liveShows_tile.dart';
import 'package:show_bazzar/Stream/stream_components/stream_colors.dart';
import 'package:show_bazzar/Stream/streammodels/live_shows.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SearchBarPage extends StatefulWidget {
  @override
  _SearchBarPageState createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  final stt.SpeechToText _speechToText = stt.SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  List<LiveShows> searchResults = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    _initSpeech();
    searchResults = List.from(showsList);
  }

  Future<void> _initSpeech() async {
    _speechEnabled = await _speechToText.initialize(
      onStatus: (status) => print('Status: $status'),
      onError: (error) => print('Error: $error'),
    );
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(
      onResult: (result) {
        setState(() {
          _lastWords = result.recognizedWords;
          updateSearchResults(_lastWords);
        });
      },
    );
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {
      _lastWords = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StremColors.streamBackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: StremColors.streamBackground,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                    updateSearchResults(searchText);
                  });
                },
                textInputAction: TextInputAction.search,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                if (!_speechToText.isListening) {
                  _startListening();
                } else {
                  _stopListening();
                }
              },
              child: _speechToText.isListening
                  ? const Icon(
                      Icons.mic_off,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: searchText.isEmpty && _lastWords.isEmpty
                ? Center(child: Container())
                : searchResults.isNotEmpty
                    ? Flexible(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: searchResults.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            LiveShows liveShows = searchResults[index];
                            return liveShowsTile(
                              liveShows: liveShows,
                            );
                          },
                        ),
                      )
                    : Center(
                        child: Text(
                          'No results found',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
          ),
        ),
      ),
    );
  }

  void updateSearchResults(String query) {
    if (query.isEmpty) {
      // setState(() {
      //   searchResults = List.from(showsList);
      // });
      return;
    }

    List<LiveShows> results = [];
    for (var result in showsList) {
      if (result.title.toLowerCase().contains(query.toLowerCase()) ||
          result.strCategory.categoryName
              .toLowerCase()
              .contains(query.toLowerCase()) ||
          result.profile.Name.toLowerCase().contains(query.toLowerCase())) {
        results.add(result);
      }
    }

    setState(() {
      searchResults = results;
    });
  }
}
