import 'package:flutter/material.dart';
import 'package:good_guest/route/routes.dart';

class PageContent extends StatelessWidget {
  final String name;
  // final String RouterName;

  const PageContent({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('当前页面是$name'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: 40.0,
            height: 20.0,
            child: ElevatedButton(
              child: Text("登录页"),
              onPressed: () {
                print("点击按钮");
                Navigator.pushNamed(context, Routes.login);
              },
            ),
          ),
          Container(
            width: 40.0,
            height: 20.0,
            child: ElevatedButton(
              child: Text("没有地址的按钮"),
              onPressed: () {
                print("点击按钮");
                Navigator.pushNamed(context, Routes.home);
              },
            ),
          ),
          Container(
            width: 40.0,
            height: 20.0,
            child: ElevatedButton(
              child: Text("没有地址的按钮1"),
              onPressed: () {
                print("点击按钮");
                Navigator.pushNamed(context, '/aa');
              },
            ),
          ),
          Container(
            width: 40.0,
            height: 20.0,
            child: ElevatedButton(
              child: Text("房屋详情页"),
              onPressed: () {
                Navigator.pushNamed(context, '/room/191369');
              },
            ),
          ),
        ],
      ),
    );
  }
}
