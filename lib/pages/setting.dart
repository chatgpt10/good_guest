import 'package:flutter/material.dart';
import 'package:good_guest/utils/common_toast.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('设置页')),
      body: ListView(children: <Widget>[
        TextButton(
            onPressed: () {
              CommontToast.showToast("退出登录成功!");
            },
            child: const Text('退出登录', style: TextStyle(color: Colors.red))),
      ]),
    );
  }
}
