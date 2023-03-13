import 'dart:async';

import 'package:brainyoung_mvp/pages/email_page.dart';
import 'package:brainyoung_mvp/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    //initstate(): 클래스가 호출됐을 때 제일 처음 상태를 결정해주는 함수(1번만 실행된다)
    // TODO: implement initState

    Timer(Duration(seconds: 3), () {
      Get.to(() => MainMenuPage());
      // Get.to(const OzzicHomePage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/01.png'),
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
            // body: Center(
            //     child: Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //       Expanded(
            //           child: SingleChildScrollView(
            //               child: Column(children: [
            //         Container(
            //           padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            //           height: 200,
            //           child: const Text(
            //             '회원가입',
            //             style: TextStyle(color: Colors.white, fontSize: 15),
            //           ),
            //         ),
            //         Container(
            //           width: 305,
            //           height: 200,
            //           // margin: EdgeInsets.only(left: 10),
            //           // padding: const EdgeInsets.all(10),
            //           alignment: const Alignment(-1.5, -2.0),
            //           child: const Text(
            //             '당신에 대해 ❤️\n알고싶어요',
            //             textAlign: TextAlign.start,
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 40,
            //             ),
            //           ),
            //         ),
            //       ])))
            //     ]))
                
                
                ));
  }
}
