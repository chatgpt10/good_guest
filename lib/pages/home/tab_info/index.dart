// 资讯页面
import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/info/index.dart';

class TabInfo extends StatefulWidget {
  TabInfo({Key? key, required bool showTitle}) : super(key: key);

  @override
  State<TabInfo> createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("资讯"),
      ),
      body: ListView(
        children: const <Widget>[
          Info(showTitle: false),
          Info(showTitle: false),
          Info(showTitle: false),
          Info(showTitle: false),
        ],
      ),
    );
  }
}
