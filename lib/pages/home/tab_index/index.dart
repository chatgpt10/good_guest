import 'package:flutter/material.dart';
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
        children: <Widget>[
          CommonSwiper(),
        ],
      ),
    );
  }
}
