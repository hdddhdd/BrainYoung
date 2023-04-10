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

import '2aboutyou_page.dart';
import '1email_page.dart';

class ChooseMenu2Page extends StatefulWidget {
  const ChooseMenu2Page({super.key});

  @override
  State<ChooseMenu2Page> createState() => _ChooseMenu2PageState();
}

class _ChooseMenu2PageState extends State<ChooseMenu2Page> {
// bool _isSelected = false;
  
  Widget getChild(String imagePath, String title) {
    return Container(
      decoration: BoxDecoration(
          //color: Colors.orange,
          borderRadius: BorderRadius.all(
        Radius.circular(10),
      )),
      width: 350,
      height: 50,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Image.network(
            imagePath,
            fit: BoxFit.contain,
            width: 50,
            height: 50,
          )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget getChild2(String title, String title2) {
    return Container(
      decoration: BoxDecoration(
          //color: Colors.orange,
          borderRadius: BorderRadius.all(
        Radius.circular(10),
      )),
      width: 350,
      height: 50,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //위에 작은 글씨
          Padding(
            padding: const EdgeInsets.fromLTRB(25,2,0,0),
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          //아래 큰 글씨
          Padding(
            padding: const EdgeInsets.fromLTRB(25,5,0,0),
            child: Text(
              title2,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
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
                child: const Text('2 / 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
              Container(
                width: 500,
                height: 150,
                margin: EdgeInsets.only(right: 30),
                // padding: const EdgeInsets.all(10),
                alignment: const Alignment(0, -3.0),
                child: const Text(
                  '가장 관심이 가는 주제를\n선택해주세요',
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
                  '관심에 맞는 영상을 추천해드릴게요!',
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
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: MultiSelectContainer(
                
                  //textStyles: const TextStyle(color: Colors.black),

                  itemsPadding: const EdgeInsets.all(5),
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
                      child: getChild2('또 다른 시작!', '대학 입시 준비'),
                    ),
                    MultiSelectCard(
                      value: '1',
                      child: getChild2('꽁꽁 숨겼던 꿀팁 대방출!', '성적 관리 꿀팁'),
                    ),
                    MultiSelectCard(
                      value: '2',
                      child: getChild2('우리들의 진솔한 마음!', '학과 선택 계기'),
                    ),
                    MultiSelectCard(
                      value: '3',
                      child: getChild2('대학에선 무엇을 할까?', '대학생들의 캠퍼스 생활'),
                    ),
                    MultiSelectCard(
                      value: '4',
                      child: getChild2('인싸들이 알려주는', '친구들과 잘 지낼 수 있는 방법'),
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
                          builder: (context) => const ChooseMenu3Page()),
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
