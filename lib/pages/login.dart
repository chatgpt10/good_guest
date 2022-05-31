// 登录页面
// 引入核心库
// ignore_for_file: prefer_const_constructors  忽略Const 引起的错误, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:good_guest/widgets/page_content.dart';

// 创建无状态组件
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 定义一个bool值 用来显示账号密码
  bool showPassword = true;
  // 1. 使用Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录"),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            TextField(
              //文本输入框组件
              decoration:
                  InputDecoration(label: Text("用户名"), hintText: '请输入用户名'),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            TextField(
              //文本输入框组件
              decoration: InputDecoration(
                label: Text("密码"),
                hintText: '请输入密码',
                suffixIcon: IconButton(
                  icon: Icon(
                      showPassword ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
              ),
              obscureText: showPassword,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            RaisedButton(
              color: Colors.pink,
              child: Text(
                "登录",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                print("登录");
              },
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("还没有账号,"),
                TextButton(
                    child: Text(
                      "去注册",
                      style: TextStyle(color: Colors.pink),
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
