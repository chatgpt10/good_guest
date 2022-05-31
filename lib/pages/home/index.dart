// 引入核心库
import 'package:flutter/material.dart';
import 'package:good_guest/widgets/page_content.dart';

import 'tab_index/index.dart';

// 1.需要准备4个tab内容区域
List<Widget> tabViewList = [
  TabIndex(),
  PageContent(name: "搜索"),
  PageContent(name: "咨询"),
  PageContent(name: "我的"),
];
// 2.准备4底部 BottomNavigationBarItem
List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(label: ('首页'), icon: Icon(Icons.home)),
  const BottomNavigationBarItem(label: ('搜索'), icon: Icon(Icons.search)),
  const BottomNavigationBarItem(label: ('咨询'), icon: Icon(Icons.info)),
  const BottomNavigationBarItem(
      label: ('我的'), icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        fixedColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
