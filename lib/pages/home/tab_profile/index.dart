// Tab 我的页面
import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/info/index.dart';
import 'package:good_guest/pages/home/tab_profile/advertisement.dart';
import 'package:good_guest/pages/home/tab_profile/header.dart';

import 'function_button.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 标题
        title: const Text("我的"),
        // 去掉顶部栏与下面的间隔
        elevation: 0,
        backgroundColor: Colors.green,
        // 后置设置图标
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print("跳转到设置Page");
                Navigator.of(context).pushNamed('settings');
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: ListView(
        children: const <Widget>[
          Header(),
          FunctionButton(),
          Advertisement(),
          Info(showTitle: true), //启用当初设置的title
        ],
      ),
    );
  }
}
