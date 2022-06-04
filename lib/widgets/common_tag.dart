// 搜索展示item 中间使用的tag标签

// 该标签会跟随不同的类型展示不同的文字颜色 和 背景颜色
import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title; // 接收的参数
  final Color color;
  final Color backgroundColor;

  const CommonTag.origin(
    this.title, {
    super.key,
    this.color = Colors.black,
    this.backgroundColor = Colors.black54,
  });

  // 通过不同的文字类型给出不同的颜色结果
  factory CommonTag(String title) {
    switch (title) {
      case '近地铁':
        return CommonTag.origin(
          title,
          color: Colors.red,
          backgroundColor: Colors.red.shade50,
        );
      case '集中供暖':
        return CommonTag.origin(
          title, //title子不变，其它值都改变
          color: Colors.blue,
          backgroundColor: Colors.blue.shade50,
        );
      case '新上':
        return CommonTag.origin(
          title, //title子不变，其它值都改变
          color: Colors.green,
          backgroundColor: Colors.green.shade50,
        );
      case '随时看房':
        return CommonTag.origin(
          title, //title子不变，其它值都改变
          color: Colors.orange,
          backgroundColor: Colors.orange.shade50,
        );
      default:
        return CommonTag.origin(title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4.0),
      padding:
          const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0, bottom: 2.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(title,
          style: TextStyle(fontSize: 10.0, color: color) //工厂里自定义的字体颜色
          ),
    );
  }
}
