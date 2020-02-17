import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:ljj_tabbar_selector/ljj_tabbar_selector.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  List<Tab> listOne = List();
  List<Widget> listTwo = List();

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < 20; i++) {
      listOne.add(Tab(text: "第$i个"));
      listTwo.add(Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LjjTabbarSelector.tabbarWidget(
          titleText: Text("导航选择器"),
          tabBarTabsList: listOne,
          tabBarViewList: listTwo,
          selectItem: (index) {
            print(index);
          }),
    );
  }
}
