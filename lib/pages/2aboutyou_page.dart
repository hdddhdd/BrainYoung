//03 - 당신에 대해 알고싶어요 페이지

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';

import '3aboutyou2_page.dart';

class DatePickerApp extends StatefulWidget {
  const DatePickerApp({super.key});

  @override
  State<DatePickerApp> createState() => _DatePickerAppState();
}

class _DatePickerAppState extends State<DatePickerApp> {
  List<bool> isSelected = [false, false, false];

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
                      alignment: Alignment(-1.0, 0.5),

                      height: 40,
                      width: 290,

                      child: const Text("성별",
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                      //Container 영역 확인용
                      // color: Colors.white,

                      // padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: const TextField(
                        decoration: InputDecoration(
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

                          filled: true,
                          fillColor: Color.fromARGB(24, 215, 215, 215),
                        ),
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                alignment: Alignment(-1.0, 0.5),

                height: 40,
                width: 290,

                child: const Text("성별",
                    style: TextStyle(fontSize: 12, color: Colors.white)),
                //Container 영역 확인용
                // color: Colors.white,

                // padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
              ),

              //여기에 추가하기
              ToggleButtons(
                isSelected: isSelected,
                fillColor: Color.fromARGB(24, 215, 215, 215),
                selectedColor: Colors.white,

                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.grey,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('남자', style: TextStyle(fontSize: 18)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('여자', style: TextStyle(fontSize: 18)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text('선택안함', style: TextStyle(fontSize: 18)),
                  ),
                ],
                onPressed: (int newIndex) {
                  setState(() {
                    for (int index = 0; index < isSelected.length; index++)
                      if (index == newIndex) {
                        isSelected[index] = true;
                      } else {
                        isSelected[index] = false;
                      }
                  });
                },
              ),
            ]))),

            //다음버튼
            Container(
                height: 80,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 113, 151, 255)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutYou2Page()),
                    );
                  },
                  child: const Text(
                    '다음',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
