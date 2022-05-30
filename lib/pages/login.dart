// 登录页面
// 引入核心库
import 'package:flutter/material.dart';
import 'package:good_guest/widgets/page_content.dart';

// 创建无状态组件
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const PageContent(
        name: '欢迎来到登录页',
        RouterName: 'home',
      ),
    );
  }
}
