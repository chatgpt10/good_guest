// 选择按钮
import 'package:flutter/material.dart';
import 'package:good_guest/widgets/common_form_item.dart';

class CommonRadioFormItem extends StatelessWidget {
  final String label;
  final List<String> options;
  final int value;
  final ValueChanged onChange;

  const CommonRadioFormItem(
      {super.key,
      required this.label,
      required this.options,
      required this.value,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return CommonFormItemWidget(
      label: label,
      contentBuilder: (context) {
        return Container(
          margin: const EdgeInsets.only(left: 10, right: 20),
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                options.length,
                (index) => Row(
                      children: [
                        Radio(
                            value: index,
                            groupValue: value,
                            onChanged: onChange),
                        Text(options[index])
                      ],
                    )),
          ),
        );
      },
    );
  }
}
