import 'package:brainyoung_mvp/pages/10Content_page.dart';
import 'package:brainyoung_mvp/pages/2aboutyou_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'package:easy_search_bar/easy_search_bar.dart';

void main() {
  runApp(const SearchPage());
}



class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchValue = '';
  final List<String> _suggestions = ['Afeganistan', 'Albania', 'Algeria', 'Australia', 'Brazil', 'German', 'Madagascar', 'Mozambique', 'Portugal', 'Zambia'];


  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Example',
      theme: ThemeData(
        
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
           leading:  IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.white,
            icon: Icon(Icons.arrow_back)),
          systemOverlayStyle: SystemUiOverlayStyle(
           statusBarBrightness: Brightness.light,
           
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          title: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Container(
              child: TextField(
                style: TextStyle(color: Color.fromARGB(255, 207, 207, 207)),
                decoration: InputDecoration(
                  //icon: Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 207, 207, 207)), 
                  
                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                  filled: true,
                          fillColor: Color.fromARGB(255, 63, 63, 63),
                  enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)
                          ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100) 
                  ),
                  hintText: '검색어를 입력해주세요.',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 207, 207, 207)),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
              ),
            ),
          ),
        ),
        body:GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: <Widget> [
              Container(
                margin:EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text(
                  "최근 검색어",
                  style: TextStyle(color: Color.fromARGB(255, 207, 207, 207)),
                ),
              ),
              Container(
                margin:EdgeInsets.symmetric(horizontal: 30),
                 child: Row(
                  children: <Widget> [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                    ' 친구 관계 조언',
                    style: TextStyle(color: Colors.white),
                    ),
                  ],
                 ),
               ),
              Container(
                margin:EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                 child: Row(
                  children: <Widget> [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                    ' 컴퓨터학과 ',
                    style: TextStyle(color: Colors.white),
                    ),
                  ],
                 ),
               ),
               Container(
                margin:EdgeInsets.symmetric(horizontal: 30),
                 child: Row(
                  children: <Widget> [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                    ' 고등학교 3학년 정시',
                    style: TextStyle(color: Colors.white),
                    ),
                  ],
                 ),
               ),
               Container(
                margin:EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                 child: Row(
                  children: <Widget> [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                    ' 경영학과 ',
                    style: TextStyle(color: Colors.white),
                    ),
                  ],
                 ),
               ),
            ],
          ),
        ),
      )
    );
  }
}