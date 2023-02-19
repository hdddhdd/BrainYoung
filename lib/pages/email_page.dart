//02 - 이메일을 입력해주세요 페이지
import 'package:brainyoung_mvp/pages/aboutyou_page.dart';
import 'package:flutter/material.dart';

class OzzicHomePage extends StatelessWidget {
  const OzzicHomePage({super.key});

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
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                height: 200,
                child: const Text(
                  '이메일로 시작',
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
                  '이메일📨을\n입력해주세요',
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
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: const TextField(
                        
                        decoration: InputDecoration(
                          
                          // labelText: '이메일',
                          // labelStyle: TextStyle(color: Colors.white),
                          hintText: '이메일',
                          hintStyle: TextStyle(color: Colors.white),
                          //전체가 둥글게
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                          //밑줄만
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide.none,
                          // ),
                          filled: true,
                          fillColor: Color.fromARGB(24, 215, 215, 215),
                        ),
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: const TextField(
                        decoration: InputDecoration(
                          // labelText: '비밀번호',
                          // labelStyle: TextStyle(color: Colors.white),
                          hintText: '비밀번호',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(24, 215, 215, 215),
                        ),
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: const TextField(
                        decoration: InputDecoration(
                          // labelText: '비밀번호',
                          // labelStyle: TextStyle(color: Colors.white),
                          hintText: '비밀번호 확인',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(24, 215, 215, 215),
                        ),
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ]))),
            Container(
                height: 80,
                width: double.infinity,
                color: const Color.fromARGB(255, 91, 118, 255),
                child: ElevatedButton(
                  //다음 버튼 만들기
                   onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutyouPage()),
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
