import 'dart:async';

import 'package:brainyoung_mvp/pages/9choosemenu3.dart';
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
                  '메뉴 선택 페이지 2',
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
                    // Container(
                    //   alignment: Alignment(-1.0, 0.5),
                    //   height: 20,
                    //   width: 290,
                    //   child: const Text("이메일",
                    //       style: TextStyle(fontSize: 12, color: Colors.white)),
                    //   //Container 영역 확인용
                    //   // color: Colors.white,
                    //   // padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                    // ),
                    // Container(
                    //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    //   child: const TextField(
                    //     decoration: InputDecoration(
                    //       // labelText: '이메일',
                    //       // labelStyle: TextStyle(color: Colors.white),
                    //       hintText: '이메일',
                    //       hintStyle: TextStyle(color: Colors.white),
                    //       //전체가 둥글게
                    //       border: OutlineInputBorder(
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(30.0)),
                    //       ),

                    //       focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //           width: 2,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //       //밑줄만
                    //       // enabledBorder: OutlineInputBorder(
                    //       //   borderSide: BorderSide.none,
                    //       // ),
                    //       filled: true,
                    //       fillColor: Color.fromARGB(24, 215, 215, 215),
                    //     ),
                    //     style: TextStyle(fontSize: 15, color: Colors.white),
                    //   ),
                    // ),
                    // Container(
                    //   alignment: Alignment(-1.0, 0.5),

                    //   height: 20,
                    //   width: 290,

                    //   child: const Text("비밀번호",
                    //       style: TextStyle(fontSize: 12, color: Colors.white)),
                    //   //Container 영역 확인용
                    //   // color: Colors.white,

                    //   // padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                    // ),
                    // Container(
                    //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    //   child: const TextField(
                    //     decoration: InputDecoration(
                    //       // labelText: '비밀번호',
                    //       // labelStyle: TextStyle(color: Colors.white),
                    //       hintText: '비밀번호',
                    //       hintStyle: TextStyle(color: Colors.white),
                    //       border: OutlineInputBorder(
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(30.0)),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //           width: 2,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //       filled: true,
                    //       fillColor: Color.fromARGB(24, 215, 215, 215),
                    //     ),
                    //     style: TextStyle(fontSize: 15, color: Colors.white),
                    //   ),
                    // ),
                    // Container(
                    //   alignment: Alignment(-1.0, 0.5),

                    //   height: 20,
                    //   width: 290,

                    //   child: const Text("비밀번호 확인",
                    //       style: TextStyle(fontSize: 12, color: Colors.white)),
                    //   //Container 영역 확인용
                    //   // color: Colors.white,

                    //   // padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                    // ),
                    // const TextField(
                    //   decoration: InputDecoration(
                    //     // labelText: '비밀번호',
                    //     // labelStyle: TextStyle(color: Colors.white),
                    //     hintText: '비밀번호 확인',
                    //     hintStyle: TextStyle(color: Colors.white),
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         width: 2,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //     filled: true,
                    //     fillColor: Color.fromARGB(24, 215, 215, 215),
                    //   ),
                    //   style: TextStyle(fontSize: 15, color: Colors.white),
                    // ),
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