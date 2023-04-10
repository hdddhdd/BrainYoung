import 'dart:async';
import 'package:brainyoung_mvp/pages/9choosemenu3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

import 'package:brainyoung_mvp/pages/8choosemenu2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '10Content_page.dart';
import '10_1ingeupdong_page.dart';
import '2aboutyou_page.dart';
import '1email_page.dart';

class ChooseMenu3Page extends StatefulWidget {
  const ChooseMenu3Page({super.key});

  @override
  State<ChooseMenu3Page> createState() => _ChooseMenu3PageState();
}

class _ChooseMenu3PageState extends State<ChooseMenu3Page> {
  Widget getChild3(String title) {
    return Container(
      decoration: BoxDecoration(
          //color: Colors.orange,
          borderRadius: BorderRadius.all(
        Radius.circular(10),
      )),
      width: 40,
      height: 40,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //위에 작은 글씨
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
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
                child: const Text('3 / 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
              Container(
                width: 500,
                height: 150,
                margin: EdgeInsets.only(right: 80),
                // padding: const EdgeInsets.all(10),
                alignment: const Alignment(0, -3.0),
                child: const Text(
                  'MBTI를 알려주세요\n',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 100,
                margin: EdgeInsets.only(right: 30),
                // padding: const EdgeInsets.all(10),
                alignment: const Alignment(1.0, -5.5),
                child: const Text(
                  '당신의 성향 정보로 더 정확한 추천을 해드릴게요!',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ]))),
//선택지 여기에 추가하기
            Container(
              margin: const EdgeInsets.fromLTRB(100, 0, 100, 10),
              child: MultiSelectContainer(
                  //textStyles: const TextStyle(color: Colors.black),
                  itemsPadding: const EdgeInsets.all(30),
                  itemsDecoration: MultiSelectDecorations(
                    //기본 decoration
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(47, 48, 53, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    //선택되었을 때 decoration
                    selectedDecoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(122, 255, 255, 255),
                        width: 2.0,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 113, 151, 254),
                        Color.fromARGB(95, 113, 151, 254)
                      ]),
                      color: Colors.black,
                    ),
                  ),
                  items: [
                    MultiSelectCard(
                      value: '0',
                      child: getChild3('E'),
                    ),
                    MultiSelectCard(
                      value: '1',
                      child: getChild3('I'),
                    ),
                    MultiSelectCard(
                      value: '2',
                      child: getChild3('N'),
                    ),
                    MultiSelectCard(
                      value: '3',
                      child: getChild3('S'),
                    ),
                    MultiSelectCard(
                      value: '4',
                      child: getChild3('F'),
                    ),
                    MultiSelectCard(
                      value: '5',
                      child: getChild3('T'),
                    ),
                    MultiSelectCard(
                      value: '6',
                      child: getChild3('J'),
                    ),
                    MultiSelectCard(
                      value: '7',
                      child: getChild3('P'),
                    ),
                  ],
                  onChange: (allSelectedItems, selectedItem) {}),
            ),

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
                          builder: (context) => const VideoPlayerApp()),
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
