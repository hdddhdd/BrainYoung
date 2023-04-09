import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

class AnyWidgetExample extends StatelessWidget {
  const AnyWidgetExample({
    Key? key,
  }) : super(key: key);

  Widget getChild(String imagePath, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color.fromARGB(46, 0, 0, 0), width: 2),
      ),
      width: 150,
      height: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Image.network(
            imagePath,
            fit: BoxFit.contain,
          )),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiSelectContainer(
        itemsPadding: const EdgeInsets.all(5),
        itemsDecoration: MultiSelectDecorations(
          decoration: BoxDecoration(color: Color.fromRGBO(47, 48, 53, 0)),
          selectedDecoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(240, 248, 253, 1),
              Color.fromRGBO(216, 234, 249, 1)
            ]),
          ),
        ),
        items: [
          MultiSelectCard(
            value: 'Dart',
            child: getChild(
              'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
              '진로 선택',
            ),
          ),
          MultiSelectCard(
            value: 'Python',
            child: getChild(
                'http://assets.stickpng.com/images/5848152fcef1014c0b5e4967.png',
                '성적 관리'),
          ),
          MultiSelectCard(
              value: 'JavaScript',
              child: getChild(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/480px-Unofficial_JavaScript_logo_2.svg.png',
                  '친구 관계')),
          MultiSelectCard(
            value: 'Java',
            child: getChild(
                'http://assets.stickpng.com/images/58480979cef1014c0b5e4901.png',
                '학과 선택'),
          ),
          MultiSelectCard(
            value: 'C#',
            child: getChild(
                'https://seeklogo.com/images/C/c-sharp-c-logo-02F17714BA-seeklogo.com.png',
                '입시 준비'),
          ),
          MultiSelectCard(
            value: 'C++',
            child: getChild(
                'https://cdn.freebiesupply.com/logos/thumbs/2x/c-logo.png',
                '부모님과의 관계'),
          ),
        ],
        onChange: (allSelectedItems, selectedItem) {});
  }
}
