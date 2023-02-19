//03 - 당신에 대해 알고싶어요 페이지
import 'package:brainyoung_mvp/pages/date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AboutyouPage extends StatelessWidget {
  const AboutyouPage({super.key});

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
                  '당신에 대해 ❤️\n알고싶어요',
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
                          hintText: '이름',
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
                        child: CupertinoButton(
                          child: Text(
                            'Open data picker',
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {},
                        )),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(''),
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
                        builder: (context) => const CuDatePicker()),
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
