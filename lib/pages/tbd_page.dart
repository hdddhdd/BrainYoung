//03 - 당신에 대해 알고싶어요 페이지

import 'package:brainyoung_mvp/pages/6FadeInOut2_Page.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';

import '5FadeInOut1_Page.dart';

class TbdPage extends StatelessWidget {
  const TbdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
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
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              height: 200,
              child: const Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
              width: 305,
              height: 200,
              // margin: EdgeInsets.only(left: 10),
              // padding: const EdgeInsets.all(10),
              alignment: const Alignment(0, 2.0),
              child: const Text(
                '해당 기능은 현재 개발 중에 있습니다. \n이메일로 회원가입해주세요☺️ \n오직 앱을 방문해주셔서 감사합니다.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
