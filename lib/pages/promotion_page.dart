//03 - 당신에 대해 알고싶어요 페이지

import 'package:brainyoung_mvp/pages/fadeinout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';

class PromotionPage extends StatelessWidget {
  const PromotionPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.black,
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
                        
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          height: 200,
                          child: const Text(
                            '회원가입',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Container(
                          width: 305,
                          height: 200,
                          // margin: EdgeInsets.only(left: 10),
                          // padding: const EdgeInsets.all(10),
                          alignment: const Alignment(-1.5, -2.0),
                          child: const Text(
                            '프로모션 코드🎁를 \n입력해주세요',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
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
                              Container(
                                alignment: Alignment(-1.0, 0.5),
                                height: 40,
                                width: 290,
                                child: const Text("프로모션 코드",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white,
                                        )),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: '프로모션 코드',
                                    hintStyle: TextStyle(color: Colors.white),
                                    //전체가 둥글게
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.white,
                                      ),
                                    ),

                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(24, 215, 215, 215),
                                  ),
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
Container(
  width: double.infinity,
  height: 205,
  
),
                        //다음버튼
                        Container(
                            height: 80,
                            width: double.infinity,
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 113, 151, 255)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FadeInOutPage()),
                                );
                              },
                              child: const Text(
                                '다음',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )),
                      ],
                    )),
                  ),
                );
  }
}
