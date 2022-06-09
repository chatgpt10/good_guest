// 房屋管理 Tab页切换
import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/tab_search/dataList.dart';
import 'package:good_guest/widgets/room_list_item_widget.dart';

class RoomManagePage extends StatelessWidget {
  const RoomManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("房屋管理"),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(text: "空置"),
              Tab(text: "已租"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              padding: const EdgeInsets.only(top: 10.0),
              children:
                  dataList.map((item) => RoomListItemWidget(item)).toList(),
            ),
            ListView(
                padding: const EdgeInsets.only(top: 10.0),
                children:
                    dataList.map((item) => RoomListItemWidget(item)).toList())
          ],
        ),
      ),
    );
  }
}
