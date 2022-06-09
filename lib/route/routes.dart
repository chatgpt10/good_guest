// fluro 路由配置
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:good_guest/pages/home/index.dart';
import 'package:good_guest/pages/room_manage/index.dart';
import 'package:good_guest/pages/setting.dart';
import '../pages/login.dart';
import '../pages/not_found.dart';
import '../pages/register.dart';
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
var _registerHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return RegisterPage();
});
var _setting = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return Setting();
});
var _roomManager = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return RoomManagePage();
});

// 路由配置
class Routes {
  static String home = "/";
  static String login = "/login";
  static String register = "/register";
  static String setting = "/setting";
  static String roomManager = "/roomManager";
  static String roomDetail = "/room/:RoomId";
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(setting, handler: _setting);
    router.define(roomManager, handler: _roomManager);
    router.define(register, handler: _registerHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
