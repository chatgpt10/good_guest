// 搜索页面 item widget
import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/info/item_widget.dart';
import 'package:good_guest/pages/home/tab_search/dataList.dart';
import 'package:good_guest/widgets/common_image.dart';
import 'package:good_guest/widgets/common_tag.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;

  const RoomListItemWidget(
    this.data, {
    super.key,
  });

  // const RoomListItemWidget(this.data, {Key? key}) : super(key: key);

  // @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("点击Item");
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        child: Row(
          children: <Widget>[
            CommonImage(
              src: data.imageUrl,
              width: 132.5,
              // height: 90.0,
            ),
            // 中间的边框
            const Padding(padding: EdgeInsets.only(left: 10.0)),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  data.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  data.subTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Wrap(
                    children: data.tags
                        .map((item) => CommonTag(item))
                        .toList()), //标签组件
                //  Wrap(children:data.tags.map((item)=>Text(item+';')).toList()),//标签组件
                Text(
                  data.subTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
