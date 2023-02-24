import 'package:flutter/material.dart';

void main() => runApp(const FadeInOutPage2());

class FadeInOutPage2 extends StatelessWidget {
  const FadeInOutPage2({super.key});

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
                  '당신만을 위한\n 고민해결사\n OZZIC입니다.',
                  style: TextStyle(color: Colors.white,fontSize: 40),
                ),
              ),
            )))
    );
  }
}
