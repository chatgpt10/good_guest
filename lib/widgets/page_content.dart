import 'package:flutter/material.dart';
import 'package:good_guest/route/routes.dart';

class PageContent extends StatelessWidget {
  final String name;
  final String RouterName;

  const PageContent({Key? key, required this.name, required this.RouterName})
      : super(key: key);

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
              child: Text("按钮"),
              onPressed: () {
                print("点击按钮");
                Navigator.pushNamed(context, Routes.login);
              },
            ),
          ),
        ],
      ),
    );
  }
}
