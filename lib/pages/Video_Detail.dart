import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:brainyoung_mvp/pages/aboutyou_page.dart';
import 'package:brainyoung_mvp/pages/video_widget.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'package:easy_search_bar/easy_search_bar.dart';

class VideoDetail extends StatelessWidget {
  const VideoDetail ({Key? key}) : super (key: key);
  

  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 18, bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("원래 사회학과를 희망했나요?",
          style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }

  Widget _descriptionZone(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        "하루아침에 사회학과를 희망했냐고 물으신다면 대답해드리는 것이 인지상정, 오늘은 사회학과 희망이유와 정확한 진로 설정 방향 찾기 방법에 대해 알려드리려고 합니다.",
        style: TextStyle(
          fontSize: 14,
          color: Colors.white.withOpacity(0.8),
        ),
      ),
    );
  }

  Widget _profileZone() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: 
      Row(children: [
        Container(
          padding: const EdgeInsets.only(top: 0),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: AssetImage('assets/wallpaper.jpg'),
          ),
        ),
        SizedBox(width:15),
        Expanded(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top:5, bottom:0) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("마더테레사",
                      style: TextStyle(
                        height: 0.1,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
        ),
      ],)
    );
  }

  Widget _description(){
    return SingleChildScrollView(
      child: Column(children: [
        _titleZone(),
        _profileZone(),
        _descriptionZone(),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "더보기",
            style: TextStyle(color:Colors.white.withOpacity(0.3)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          height: 1,
          color: Colors.white.withOpacity(0.3),
        ),
      ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5.0), // here the desired height
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
          ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.grey.withOpacity(0.5),
          ),
          Expanded(
            child: _description(),
          )
        ],
      ),
    );
  }}