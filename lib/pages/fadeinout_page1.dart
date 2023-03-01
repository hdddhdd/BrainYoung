import 'dart:async';

import 'package:brainyoung_mvp/pages/fadeinout_page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'email_page.dart';

void main() => runApp(const FadeInOutPage1());

class FadeInOutPage1 extends StatelessWidget {
  const FadeInOutPage1({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 void initState() {
    //initstate(): 클래스가 호출됐을 때 제일 처음 상태를 결정해주는 함수(1번만 실행된다)
    // TODO: implement initState

    Timer(Duration(seconds: 3), () {
      Get.to(() => FadeInOutPage2());
      // Get.to(const OzzicHomePage());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      
      type: MaterialType.transparency,
      child: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: FadeTransition(
            opacity: _animation,
            child: Container(
              child: const Center(
                child: Text(
                  '안녕하세요\n김오직님',
                  style: TextStyle(color: Colors.white,fontSize: 40),
                ),//터치하면 다음 페이지로 이동하게끔!
              ),
            ),
          
            )
            ),
            
    );
  }
}

//  ElevatedButton(
//                 child: const Text(''),
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                         Color.fromARGB(0, 113, 151, 255)),
//                   ),
//                 onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const FadeInOutPage2()),
//                     );
//                   },
//               ),