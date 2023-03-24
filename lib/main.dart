import 'package:brainyoung_mvp/pages/Content_page.dart';
import 'package:brainyoung_mvp/pages/aboutyou_page.dart';
import 'package:brainyoung_mvp/pages/image_page_test.dart';
import 'package:brainyoung_mvp/pages/menu_page.dart';
import 'package:brainyoung_mvp/pages/search.dart';
import 'package:brainyoung_mvp/pages/search_result.dart';
import 'package:brainyoung_mvp/pages/Video_Detail.dart';
import 'package:brainyoung_mvp/pages/splash.dart';
import 'package:brainyoung_mvp/pages/ingeupdong_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/route_manager.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('en'), // English
    Locale('es'), // Spanish
  ],
      title: 'Flutter Demo',
   
      // home: MainMenuPage(),
      home: VideoDetail(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const LandingPage());
  }
}

//위젯 1
// ignore: camel_case_types
class homewidget extends StatelessWidget {
  const homewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wero'),
      ),
      body: const Text('hi'),
    );
  }
}
