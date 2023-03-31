import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:brainyoung_mvp/pages/2aboutyou_page.dart';
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
                padding: const EdgeInsets.only(top:5, bottom:0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("마더테레사",
                      style: TextStyle(
                        height: 0.1,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, bottom: 8),
                      padding: const EdgeInsets.only(top:2, bottom:2, left: 2, right: 2),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      child: Text(
                        "사회학과",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, bottom: 8),
                      padding: const EdgeInsets.only(top:2, bottom:2, left: 3, right: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.red,
                        ),
                      child: Text(
                        "ENTJ",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
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

  Widget _comment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [ 
        Container(
          padding: EdgeInsets.only(top: 15, left: 20, bottom: 10),
          child: Text(
            "댓글 264",
            style: TextStyle(
              fontSize: 12,
              color:Colors.white,
            ),
          ),
      ),
      Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "댓글 입력",
            style: TextStyle(
              fontSize: 15,
              color:Colors.white.withOpacity(0.5),
            ),
          ),
      ),
      ],
    );
  }

  Widget _thumbnail() {
    return Container(
      height: 180,
      color: Colors.black,
      child: Container(
        decoration: new BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
        image: new DecorationImage(
         fit: BoxFit.cover,
         image: AssetImage('assets/wallpaper.jpg'), // 배경 이미지
        ),
      ),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      )
    );
  }

  Widget _simpleDetailInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10,bottom: 0),
      child: 
      Row(children: [
        Container(
          padding: const EdgeInsets.only(left: 5),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: AssetImage('assets/wallpaper.jpg'),
          ),
        ),
        SizedBox(width:15),
        Expanded(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top:0, bottom:0) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("아직 진로를 정하지 못한 너에게",
                      style: TextStyle(
                        height: 0.1,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert, size:15,
                      color: Colors.white.withOpacity(0.8)),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top:0, bottom:15),
                child: Row(
                  children: [
                    Text(
                      "진로 탐색 요정",
                      style: TextStyle(
                        height: 0.1,
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      " | 디자인학과",
                      style: TextStyle(
                        height: 0.1,
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    )
                ],),
              )
            ]),
        ),
      ],)
    );
  }

  Widget _VideoList () {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children : [
          Container(
            height: 180,
            color: Colors.black,
            child: Container(
              decoration: new BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
              image: new DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/wallpaper.jpg'), // 배경 이미지
              ),
            ),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            )
          ),
        ],
      ),
    );
  }

  Widget _description(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        _titleZone(),
        _profileZone(),
        _descriptionZone(),
        Container(
          margin: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: Text(
            "더보기",
            style: TextStyle(color:Colors.white.withOpacity(0.5)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          height: 1,
          color: Colors.white.withOpacity(0.3),
        ),
        _comment(),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 5,
          color: Colors.white.withOpacity(0.2),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
          child: Text(
            textAlign: TextAlign.left,
            "회원님을 위한 추천 영상",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        _VideoList(),
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
            height: 200,
            color: Colors.grey.withOpacity(0.5),
          ),
          Expanded(
            child: _description(),
          )
        ],
      ),
    );
  }}