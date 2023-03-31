import 'package:brainyoung_mvp/pages/2aboutyou_page.dart';
import 'package:brainyoung_mvp/pages/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'package:easy_search_bar/easy_search_bar.dart';

void main() {
  runApp(const SearchResultPage());
}



class SearchResultPage extends StatefulWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  String searchValue = '';
  final List<String> _suggestions = ['Afeganistan', 'Albania', 'Algeria', 'Australia', 'Brazil', 'German', 'Madagascar', 'Mozambique', 'Portugal', 'Zambia'];


  
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'Example',
      theme: ThemeData(
        
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
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
        ),
        body:SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: VideoWidget(),
          ),
        ),
      )
   );
  }
}