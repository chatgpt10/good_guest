import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/tab_index/index_recommond_data.dart';
import 'package:good_guest/widgets/common_image.dart';

// 定义字体变量
var textStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);

// 定义无状态组件
class IndexRecommendItemWidget extends StatelessWidget {
  // 定义数据
  final IndexRecommendItem data;

  const IndexRecommendItemWidget(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(data.navigateUrl);
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        width: (MediaQuery.of(context).size.width - 30.0) / 2, //获取当前手机真实宽度
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  data.title,
                  style: textStyle,
                ),
                Text(
                  data.title,
                  style: textStyle,
                ),
              ],
            ),
            CommonImage(src: data.imageUrl, width: 55.0)
          ],
        ),
      ),
    );
  }
}
