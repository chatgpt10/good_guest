// 发布房源等悬浮按钮
import 'package:flutter/material.dart';

class CommonFloatingButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const CommonFloatingButton(
    this.title,
    this.onTap, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("roomAdd");
      },
      child: Container(
        margin: const EdgeInsets.all(20.0),
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.green,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
