import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/tab_profile/function_button_data.dart';
import 'package:good_guest/widgets/common_image.dart';

class FunctionButtonWidget extends StatelessWidget {
  final FunctionButtonItem data;

  const FunctionButtonWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("click me");
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(children: <Widget>[
          CommonImage(src: data.imageUrl),
          Text(data.title)
        ]),
      ),
    );
  }
}
