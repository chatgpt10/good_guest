// 登录页面
// 引入核心库
// ignore_for_file: prefer_const_constructors  忽略Const 引起的错误, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:good_guest/widgets/page_content.dart';

// 创建无状态组件
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  // 1. 使用Scaffold
  // 2. 添加appBar
  // 3.完成Body部分
  // 3.1用户名
  // 3.2密码
  // 3.2登录按钮
  // 3.2注册链接
  // 4.主题颜色- Theme
  // 5.测试

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录"),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            TextField(
              //文本输入框组件
              decoration:
                  InputDecoration(label: Text("用户名"), hintText: '请输入用户名'),
            ),
            TextField(
              //文本输入框组件
              decoration: InputDecoration(label: Text("密码"), hintText: '请输入密码'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("还没有账号,"),
                FlatButton(
                    child: Text(
                      "去注册",
                      style: TextStyle(color: Colors.green),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'rigister');
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
