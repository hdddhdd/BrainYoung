//03 - 당신에 대해 알고싶어요 페이지
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:brainyoung_mvp/pages/4promotion_page.dart';
import 'package:flutter/material.dart';

class AboutYou2Page extends StatefulWidget {
  const AboutYou2Page({super.key});

  @override
  State<AboutYou2Page> createState() => _AboutYou2PageState();
}

class _AboutYou2PageState extends State<AboutYou2Page> {
  File? _image;

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
                        child: Column(
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
                          transformAlignment: Alignment.center,
                          width: 305,
                          height: 200,
                          // margin: EdgeInsets.only(left: 10),
                          // padding: const EdgeInsets.all(10),
                          alignment: const Alignment(-1.5, -2.0),
                          child: const Text(
                            '프로필을 😄\n등록해주세요',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          height: 360,
                          // margin: const EdgeInsets.all(10),
                          child: Column(
                            //이게 뭔의미인진 아직 모름
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              //갤러리 사진 불러오기
                              Column(
                                children: [
                                  
                                  RawMaterialButton(
                                    shape: const CircleBorder(),
                                    onPressed: () async {
                                      final _picker = ImagePicker();
                                      // Pick an image
                                      final image = await _picker.pickImage(
                                          source: ImageSource.gallery);
                                      if (image != null) {
                                        setState(() {
                                          _image = File(image.path);
                                        });
                                      }
                                      // print('image $image');                                  
                                       },
                                       child: Container(
                                      alignment: Alignment(-1.0, 0),
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 35.0,
                                        color: Colors.white,
                                      ),
                                    ),

                                    // ignore: prefer_const_constructors
                                  
                                  ),
                                

                                                
                                _image == null
                                      ? const Text('Empty image')
                                      : Image.file(_image!),
                                
                                  
                                  // CircleAvatar(
                                  //   backgroundColor: Colors.grey,
                                  //   radius: 100,
                                  //   child: CircleAvatar(
                                  //     radius: 100,
                                  //     backgroundImage: 
                                      
                                  //     Image.file(
                                  //       _image! ,
                                  //       fit: BoxFit.cover,
                                  //     ).image,
                                  //   ),
                                  // ),

                                 
                                ],
                                
                              ),

                              Container(
                                alignment: Alignment(-1.0, 0.5),
                                height: 40,
                                width: 290,
                                child: const Text("닉네임",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white)),
                              ),

                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: '닉네임',
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
                                      builder: (context) =>
                                          const PromotionPage()),
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
                ]))));
  }
}
