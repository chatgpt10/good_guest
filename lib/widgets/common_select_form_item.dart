// 选择下拉弹框
import 'package:flutter/material.dart';
import 'package:good_guest/utils/common_picker/index.dart';
import 'package:good_guest/widgets/common_form_item.dart';

class CommonSelectFormItem extends StatelessWidget {
  final String label;
  final int value;
  final List<String> options;
  final Function(int) onChange;

  const CommonSelectFormItem(
      {super.key,
      required this.label,
      required this.value,
      required this.options,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return CommonFormItemWidget(
      label: label,
      contentBuilder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent, //所有区域均可点击
          onTap: () {
            var result = CommonPicker.showPicker(
              context: context,
              options: options,
              value: value,
            );
            result.then((selectedValue) {
              if (value != selectedValue &&
                  selectedValue != null &&
                  onChange != null) {
                onChange(selectedValue);
              }
            });
          },
          child: Container(
            height: 40.0,
            width: 280.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  options[value],
                  style: const TextStyle(fontSize: 16),
                ),
                const Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
        );
      },
    );
  }
}
