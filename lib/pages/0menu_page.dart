//01 - 로그인 방법 선택 페이지
import 'package:flutter/material.dart';

import '1email_page.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/01.png'),
        ),
      ),
      child: Scaffold(
        //이거 해줘야 배경보임요.....하하ㅏ
        backgroundColor: Colors.transparent,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            const SizedBox(
              //빈 공간 넣어주기
              width: 200,
              height: 500,
            ),

            Container(
              padding: const EdgeInsets.only(bottom: 8),
              width: 260,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF7E600),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  '카카오톡으로 시작',
                  style: TextStyle(color: Colors.black),
                ),
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
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              width: 260,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2DB400),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  '네이버로 시작',
                  style: TextStyle(color: Colors.white),
                ),
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
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              width: 260,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  '구글로 시작',
                  style: TextStyle(color: Colors.black),
                ),
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
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 12),
              width: 260,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  side: const BorderSide(width: 1.0, color:Colors.white)
                ),
                child: const Text(
                  '이메일로 시작',
                  style: TextStyle(color: Colors.white),
                ),
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
            ),
            const SizedBox(
              width: 260,
              height: 40,
              child: Text(
                '로그인',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
