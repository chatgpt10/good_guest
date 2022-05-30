// fluro 路由配置
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:good_guest/pages/home/index.dart';
import '../pages/login.dart';
import '../pages/not_found.dart';
import '../pages/room_detail/index.dart';

// 对应处理函数
var _homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});
var _loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LoginPage();
});
var _notFoundHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const NotFoundPage();
});
var _roomDetailHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return RoomDetailPage(RoomId: params['RoomId']![0]);
});

// 路由配置
class Routes {
  static String home = "/";
  static String login = "/login";
  static String roomDetail = "/room/:RoomId";
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
