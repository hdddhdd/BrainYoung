import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import 'package:brainyoung_mvp/pages/8choosemenu2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '2aboutyou_page.dart';
import '1email_page.dart';

class ChooseMenu1Page extends StatefulWidget {
  const ChooseMenu1Page({super.key});

  @override
  State<ChooseMenu1Page> createState() => _ChooseMenu1PageState();
}

class _ChooseMenu1PageState extends State<ChooseMenu1Page> {
  //  void initState() {
  //   //initstate(): 클래스가 호출됐을 때 제일 처음 상태를 결정해주는 함수(1번만 실행된다)
  //   // TODO: implement initState

  //   Timer(Duration(seconds: 3), () {
  //     Get.to(() => OzzicHomePage());
  //     // Get.to(const OzzicHomePage());
  //   });
  //   super.initState();
  // }
  Widget getChild(String imagePath, String title) {
    return Container(
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(20),
        //border: Border.all(color: Color.fromARGB(46, 0, 0, 0), width: 2),
      ),
      width: 150,
      height: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Image.network(
            imagePath,
            fit: BoxFit.contain,
          )),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/02.png'),
          ),
          color: Colors.black),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // title: const Text('Wero'),'
          //앱바 투명으로 바꾸기
          backgroundColor: Colors.transparent,
          //그림자 농도 설정 - 0으로
          elevation: 0.0,
        ),
        //body 위에 앱바 올리기
        extendBodyBehindAppBar: true,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                height: 200,
                alignment: const Alignment(-0.5, -1.0),
                child: const Text('1 / 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
              Container(
                width: 500,
                height: 150,
                // margin: EdgeInsets.only(left: 10),
                // padding: const EdgeInsets.all(10),
                alignment: const Alignment(0, -3.0),
                child: const Text(
                  '최근 고민이 있었던 주제를\n모두 골라주세요',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                width: 270,
                height: 100,
                // margin: EdgeInsets.only(left: 10),
                // padding: const EdgeInsets.all(10),
                alignment: const Alignment(-1.0, -4.5),
                child: const Text(
                  '고민에 맞는 영상을 추천해드릴게요!',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ]))),
//선택지 여기에 추가하기
            MultiSelectContainer(
                //textStyles: const TextStyle(color: Colors.black),
              
               itemsPadding: const EdgeInsets.all(5),
               
                itemsDecoration: MultiSelectDecorations(
                  decoration:

                      BoxDecoration(color: Color.fromRGBO(47, 48, 53, 1)),
                  
                  
                  selectedDecoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 113, 151, 254),
                      Color.fromARGB(95, 113, 151, 254)
                    ]),
                  color: Colors.black,
                  
                  ),
                ),
                items: [
                  MultiSelectCard(
                    value: 'Dart',
                    child: getChild(
                      'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
                      '진로 선택',
                    ),
                  ),
                  MultiSelectCard(
                    value: 'Python',
                    child: getChild(
                        'http://assets.stickpng.com/images/5848152fcef1014c0b5e4967.png',
                        '성적 관리'),
                  ),
                  MultiSelectCard(
                      value: 'JavaScript',
                      child: getChild(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/480px-Unofficial_JavaScript_logo_2.svg.png',
                          '친구 관계')),
                  MultiSelectCard(
                    value: 'Java',
                    child: getChild(
                        'http://assets.stickpng.com/images/58480979cef1014c0b5e4901.png',
                        '학과 선택'),
                  ),
                  MultiSelectCard(
                    value: 'C#',
                    child: getChild(
                        'https://seeklogo.com/images/C/c-sharp-c-logo-02F17714BA-seeklogo.com.png',
                        '입시 준비'),
                  ),
                  MultiSelectCard(
                    value: 'C++',
                    child: getChild(
                        'https://cdn.freebiesupply.com/logos/thumbs/2x/c-logo.png',
                        '부모님과의 관계'),
                  ),
                ],
                onChange: (allSelectedItems, selectedItem) {}),

            Container(
                height: 80,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 113, 151, 255)),
                  ),
                  //다음 버튼 만들기
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChooseMenu2Page()),
                    );
                  },
                  child: const Text(
                    '다음',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )

                // child: const Text(
                //   '다음',
                //   style: TextStyle(color: Colors.white, fontSize: 15),
                //   textAlign: TextAlign.center,
                // ),
                ),
          ],
        )),
      ),
    );
  }
}
