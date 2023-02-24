import 'package:brainyoung_mvp/pages/fadeinout_page2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const FadeInOutPage());

class FadeInOutPage extends StatelessWidget {
  const FadeInOutPage({super.key});

  // static const String _title = 'Fadeinout1';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: _title,
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

  int _widgetId = 1;
  Widget _widget1() {
    return Container(
      key: Key('first'),
      width: double.infinity,
      height:500,
        color: Color.fromARGB(255, 0, 0, 0),
        child: FadeTransition(
          opacity: _animation,
          child: const Center(
              child:  Text(
                //(나중에 이용자 이름 새로 넣기)
                '안녕하세요\n 김오직님',
                style: TextStyle(color: Colors.white,fontSize: 40),
              ),

             
              ),
        ));
  }

  Widget _widget2() {
    return Container(
      key: Key('second'),
      width: double.infinity,
      height: 500,
        color: Color.fromARGB(255, 0, 0, 0),
        child: FadeTransition(
          opacity: _animation,
          child: const Center(
              child:
               Text(
                //(나중에 이용자 이름 새로 넣기)
                '오직입니다~',
                style: TextStyle(color: Colors.white,fontSize: 40),

              ),
              // Text(
              //   //(나중에 이용자 이름 새로 넣기)
              //   '오직입니다~',
              //   style: TextStyle(color: Colors.white,fontSize: 40),

              // ),

              ),
        ));
  }
  Widget _renderWidget(){
    _widgetId=1;
      return _widgetId == 1 ? _widget1() : _widget2();
  }

   void _updateWidget() {
      setState(() {
        _widgetId = _widgetId == 1 ? 2 : 1;
      });
    }


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
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(seconds: 3),
                child: _renderWidget(),
              ),
            
             
              ElevatedButton(
                child: const Text(''),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(0, 113, 151, 255)),
                  ),
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FadeInOutPage2()),
                    );
                  },
              ),
            ],
          ),
          
        )));
  }
}
