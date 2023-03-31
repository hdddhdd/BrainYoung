import 'dart:async';
import 'package:brainyoung_mvp/pages/10_1ingeupdong_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'my_page.dart';
import '10_2search.dart';

void main() => runApp(const VideoPlayerApp());

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '콘텐츠 메인 페이지',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    const IngeupdongPage(),
    const VideoPlayerApp(),
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
      'assets/videos/lit_enfj.mp4',
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        actions: [
          IconButton(onPressed:  () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchPage()),
                                );
                              }, icon: Icon(Icons.search)),
          IconButton(icon: Icon(Icons.search), onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchPage()),
                                );
                              },),
        ],
      ),
      extendBodyBehindAppBar: true,
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: Column(
        children: [
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
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '회원님을 위한 추천 영상', style: TextStyle(color: Colors.black),

                //style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 120,
            child: ListView(
                scrollDirection: Axis.horizontal,
                // 컨테이너들을 ListView의 자식들로 추가
                children: <Widget>[
                  Container(
                    width: 160.0,
                    //여기에 "이미지 썸네일 + 영상 페이지로 연결" 넣으면 됨.

                   
                  ),
                  Container(
                    width: 200.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 200.0,
                    color: Colors.green,
                  ),
                  Container(
                    width: 200.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 200.0,
                    color: Colors.orange,
                  )
                ]),
          ),
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: const Text(
                '꿀팁이 필요할 때', style: TextStyle(color: Colors.black),

                //style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
                scrollDirection: Axis.horizontal,
                // 컨테이너들을 ListView의 자식들로 추가
                children: <Widget>[
                  Container(
                    width: 160.0,
                    // color: Colors.red,
                    //여기에 "이미지 썸네일 + 영상 페이지로 연결" 넣으면 됨.

                    //텍스트 정보
                    // child:   Padding(
                    //   padding:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    //   // 썸네일 아래에 이미지 날짜와 제목을 가로로 표시한다.
                    //   child: Row(

                    //     mainAxisSize: MainAxisSize.min,
                    //     // ignore: prefer_const_literals_to_create_immutables
                    //     children: [
                    //       const Text(

                    //         "야야야야야야야야야야야야야야야야",
                    //         style: TextStyle(
                    //           color: Colors.black,
                    //           fontFamily: 'NexonLv2GothicMedium',
                    //           fontSize: 16,
                    //         ),
                    //       ),
                    //       const SizedBox(width: 15),
                    //       const Expanded(
                    //         child: Text(
                    //           "어쩔",
                    //           textAlign: TextAlign.start,
                    //           // 제목이 너무 길면 (overflow) '...' 으로 축약해서 표시한다.
                    //           overflow: TextOverflow.ellipsis,
                    //           style: TextStyle(
                    //             color: Colors.black,
                    //             fontSize: 16,
                    //           ),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.orange,
                  )
                ]),
          ),
        ],
      ),

      floatingActionButton: Container(
        //alignment:  ,
        width: 60,
        height: 60,
        margin: EdgeInsets.fromLTRB(400, 0, 0, 480),
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
          backgroundColor: Color.fromARGB(49, 211, 211, 211),
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
    );
  }
}
