import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      height: 250,
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
          padding: const EdgeInsets.only(top: 0),
          child: CircleAvatar(
            radius: 25,
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

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10,),
          _thumbnail(),
          _simpleDetailInfo(),
          _thumbnail(),
          _simpleDetailInfo(),
          _thumbnail(),
          _simpleDetailInfo(),
          _thumbnail(),
          _simpleDetailInfo(),
        ],)
    );
  }
}