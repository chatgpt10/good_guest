// 搜索页面
import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/tab_search/dataList.dart';
import 'package:good_guest/widgets/room_list_item_widget.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({Key? key}) : super(key: key);

  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("搜索"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children:
                  dataList.map((item) => RoomListItemWidget(item)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
