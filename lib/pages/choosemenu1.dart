import 'dart:async';

import 'package:brainyoung_mvp/pages/choosemenu2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'aboutyou_page.dart';
import 'email_page.dart';

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
                child: const Text(
                  '메뉴 선택 페이지 1',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Container(
                width: 270,
                height: 180,
                // margin: EdgeInsets.only(left: 10),
                // padding: const EdgeInsets.all(10),
                alignment: const Alignment(-1.5, -2.0),
                child: const Text(
                  '메뉴 선택 페이지 만들어야 함.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                // margin: const EdgeInsets.all(10),
                child: Column(
                  //이게 뭔의미인진 아직 모름
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                   
                  ],
                ),
              ),
            ]))),
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