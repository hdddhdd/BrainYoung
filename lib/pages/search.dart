import 'package:brainyoung_mvp/pages/aboutyou_page.dart';
import 'package:flutter/material.dart';
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
          backgroundColor: Colors.black,
          elevation: 0,
          title: Container(
            child: TextField(
              style: TextStyle(color: Color.fromARGB(255, 207, 207, 207)),
              decoration: InputDecoration(
                icon: Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 207, 207, 207)),
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
        body:ListView(
          children: [
            Container(
              margin:EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Text(
                "최근 검색어",
                style: TextStyle(color: Color.fromARGB(255, 207, 207, 207)),
              ),
            ),
            Container(
              margin:EdgeInsets.symmetric(horizontal: 30),
               height: 50,
               child: Container(
                 child:Text(
                  '햄스터가 보고싶어',
                  style: TextStyle(color: Colors.white),
                  ),
               )
             ),
             Container(
              margin:EdgeInsets.symmetric(horizontal: 30),
               height: 50,
               child: Container(
                 child:Text(
                  '나는 고양이를 보고싶어',
                  style: TextStyle(color: Colors.white),
                  ),
               )
             ),
          ],
        ),
      )
    );
  }
}