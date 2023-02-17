import 'package:flutter/material.dart';

class OzzicHomePage extends StatelessWidget {
  const OzzicHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('02_temp.png'),
          ),
          color: Colors.black),
      child: Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 305,
              height: 200,
              // margin: EdgeInsets.only(left: 10),
              // padding: const EdgeInsets.all(10),
              alignment: Alignment(-2.0, -2.0),
              child: const Text(
                '이메일📨을\n입력해주세요',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            Container(
              width: 300,
              // margin: const EdgeInsets.all(10),
              child: Column(
                //이게 뭔의미인진 아직 모름
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      // labelText: '이메일',
                      // labelStyle: TextStyle(color: Colors.white),
                      hintText: '이메일',
                      hintStyle: TextStyle(color: Colors.white),
                      //전체가 둥글게
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  const TextField(
                    decoration: InputDecoration(
                      // labelText: '비밀번호',
                      // labelStyle: TextStyle(color: Colors.white),
                      hintText: '비밀번호',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  const TextField(
                    decoration: InputDecoration(
                      // labelText: '비밀번호',
                      // labelStyle: TextStyle(color: Colors.white),
                      hintText: '비밀번호 확인',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  // Center(
                  //     child: ElevatedButton(
                  //   child: Text('돌아가기'),
                  //   onPressed: () {
                  //     Navigator.pop(context);
                  //   },
                  // ))
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
