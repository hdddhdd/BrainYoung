import 'package:flutter/material.dart';

import 'ozzic_page.dart';

class SignMenuPage extends StatelessWidget {
  const SignMenuPage({super.key});

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
          // backgroundColor: Colors.grey,
          body: Center(
              child: Container(
            width: 200,
            height: 50,
            child: ElevatedButton(
              child: const Text('이메일로 시작'),
              //여기서 스타일 적용해주기
              //style: ,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OzzicHomePage()),
                );
              },
            ),
          )),
        ));
  }
}
