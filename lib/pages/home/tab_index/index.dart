import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/tab_index/index_navigator.dart';
import 'package:good_guest/pages/home/tab_index/index_recommend.dart';
import 'package:good_guest/widgets/common_swiper.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("主页"),
      ),
      body: ListView(
        children: const <Widget>[
          CommonSwiper(),
          IndexNavigator(),
          IndexRecommend(),
        ],
      ),
    );
  }
}
