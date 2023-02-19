import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuDatePicker extends StatelessWidget {
  const CuDatePicker({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text(
            'Cupertino Date Picker',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CupertinoButton(
                  child: const Text(
                    'OPEN DATE PICKER',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );}}