import 'dart:async';
import 'package:brainyoung_mvp/pages/10_1ingeupdong_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'my_page.dart';
import '10_2search.dart';

void main() => runApp(const VideoPlayerApp2());

class VideoPlayerApp2 extends StatelessWidget {
  const VideoPlayerApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '콘텐츠 메인 페이지',
      home: VideoPlayerScreen2(),
    );
  }
}

class VideoPlayerScreen2 extends StatefulWidget {
  const VideoPlayerScreen2({super.key});

  @override
  State<VideoPlayerScreen2> createState() => _VideoPlayerScreen2State();
}

class _VideoPlayerScreen2State extends State<VideoPlayerScreen2> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    const IngeupdongPage(),
    const VideoPlayerApp2(),
    const MyPage(),
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset(
      'assets/videos/esfj.mp4',
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.black,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/02.png'),
            ),
            color: Colors.black),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(''),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            elevation: 0.0,
            leading: Image.asset(
              'assets/ozzic_logo.png',
              width: 50,
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()),
                    );
                  },
                  icon: Icon(Icons.search)),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                },
              ),
            ],
          ),
          extendBodyBehindAppBar: true,
          // Use a FutureBuilder to display a loading spinner while waiting for the
          // VideoPlayerController to finish initializing.
          body: Column(children: [
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the video.
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: VideoPlayer(_controller),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ]),

          floatingActionButton: Container(
            //alignment:  ,
            width: 60,
            height: 60,
            margin: EdgeInsets.fromLTRB(400, 0, 0, 420),
            child: FloatingActionButton(
              onPressed: () {
                // Wrap the play or pause in a call to `setState`. This ensures the
                // correct icon is shown.
                setState(() {
                  // If the video is playing, pause it.
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    // If the video is paused, play it.
                    _controller.play();
                  }
                });
              },
              // Display the correct icon depending on the state of the player.
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
            ),
          ),
          //어디 들어가야 하냐
          // Center(
          //               child: _widgetOptions.elementAt(_selectedIndex),

          //     ),

          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.text_snippet),
                label: '인급동',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: '마이페이지',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            // onTap: _onItemTapped,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ));
  }
}