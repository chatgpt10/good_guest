import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/info/data.dart';
import 'package:good_guest/pages/home/info/item_widget.dart';

// 创建资讯列表 无状态组件
class Info extends StatelessWidget {
  // 由于资讯组件需要在首页和资讯页面使用,需要定义变量控制标题的显示
  final bool showTitle = true;
  final List<InfoItem> dataList;

  const Info({super.key, this.dataList = infoData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          // 是否显示标题
          if (showTitle)
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(bottom: 10.0),
              child: const Text('最新资讯',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600)),
            ),
          // 资讯列表
          Column(
            children: dataList.map((item) => ItemWidget(item)).toList(),
          ),
        ],
      ),
    );
  }
}
