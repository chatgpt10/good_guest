// fluro 路由配置
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:good_guest/pages/home/index.dart';
import '../pages/login.dart';

// 对应处理函数
var _homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});
var _loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LoginPage();
});

// 路由配置
class Routes {
  static String home = "/";
  static String login = "/login";
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
  }
}
