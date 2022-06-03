import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/tab_index/index_navigator_item.dart';
import 'package:good_guest/widgets/common_image.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: indexNavigatorItemList
              .map((item) => InkWell(
                    //InkWell可以实现水波纹效果
                    onTap: () {
                      item.onTap(context);
                    },
                    child: Column(children: <Widget>[
                      // Image.asset(item.imageUrl,
                      CommonImage(
                        src: item.imageUrl,
                        width: 47.5,
                      ),
                      Text(item.title,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ))
                    ]),
                  ))
              .toList() //转化成List
          ),
    );
  }
}
