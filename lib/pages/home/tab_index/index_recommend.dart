// 主页推荐
import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/tab_index/index_recommend_item_widget.dart';
import 'package:good_guest/pages/home/tab_index/index_recommond_data.dart';

class IndexRecommend extends StatelessWidget {
  // 定义推荐项item
  final List<IndexRecommendItem> dataList;

  const IndexRecommend({super.key, this.dataList = indexRecommendData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          // 头部
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                "房屋推荐",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "更多",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          // Item项
          const Padding(
            padding: EdgeInsets.all(5),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children:
                dataList.map((item) => IndexRecommendItemWidget(item)).toList(),
          ),
        ],
      ),
    );
  }
}
