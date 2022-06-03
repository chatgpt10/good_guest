// 资讯Item组件
import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/info/data.dart';
import 'package:good_guest/widgets/common_image.dart';

var textStyle =
    const TextStyle(color: Colors.black54, fontWeight: FontWeight.w600);

// 定义无状态列表
class ItemWidget extends StatelessWidget {
  final InfoItem data;
  const ItemWidget(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      height: 100.0,
      child: Row(
        children: <Widget>[
          CommonImage(
            src: data.imageUrl,
            width: 120.0,
            height: 90.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  data.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      data.source,
                      style: textStyle,
                    ),
                    Text(
                      data.time,
                      style: textStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
