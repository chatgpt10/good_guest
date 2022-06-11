// 房屋添加 Page
import 'package:flutter/material.dart';
import 'package:good_guest/widgets/common_floating_button.dart';
import 'package:good_guest/widgets/common_form_item.dart';
import 'package:good_guest/widgets/common_radio_form_item.dart';
import 'package:good_guest/widgets/common_select_form_item.dart';
import 'package:good_guest/widgets/common_title.dart';

class RoomAddPage extends StatefulWidget {
  RoomAddPage({Key? key}) : super(key: key);

  @override
  State<RoomAddPage> createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  int rentType = 0;
  int decorationType = 0;
  int roomType = 0;
  int floor = 0;
  int oriented = 0;
  var titleController = TextEditingController();
  var descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingButton('提交', () {
        print("点击了提交");
      }),
      appBar: AppBar(
        title: const Text("发布房源"),
      ),
      body: ListView(
        children: <Widget>[
          const CommonTitle("房源信息"),
          CommonFormItemWidget(
              label: "小区",
              contentBuilder: (context) {
                return Container(
                    height: 40.0,
                    width: 280.0,
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent, //解决点击空白地方无效问题
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text('请选择小区', style: TextStyle(fontSize: 16.0)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      onTap: () {
                        print("跳转选择小区页");
                      },
                    ));
              }),
          CommonFormItemWidget(
            label: '租金',
            hitText: '请输入租金',
            suffixText: '元/月',
            controller: TextEditingController(),
          ),
          CommonFormItemWidget(
            label: '宠物',
            hitText: '请输入宠物名字',
            suffixText: '只',
            controller: TextEditingController(),
          ),
          CommonFormItemWidget(
            label: '大小',
            hitText: '请输入房屋大小',
            suffixText: '平方米',
            controller: TextEditingController(),
          ),
          CommonRadioFormItem(
            label: '租赁方式',
            options: const ['合租', '整租'],
            value: rentType,
            onChange: (index) {
              print(index);
              setState(() {
                rentType = index;
              });
            },
          ),
          CommonRadioFormItem(
              label: '装修',
              options: ['精装', '简装'],
              value: decorationType,
              onChange: (index) {
                setState(() {
                  decorationType = index;
                });
              }),
          CommonSelectFormItem(
            label: '户型',
            value: roomType,
            onChange: (val) {
              setState(() {
                roomType = val;
              });
            },
            options: ['一室', '二室', '三室', '四室'],
          ),
          CommonSelectFormItem(
            label: '楼层',
            value: floor,
            onChange: (val) {
              setState(() {
                floor = val;
              });
            },
            options: ['高楼层', '中楼层', '低楼层'],
          ),
          CommonSelectFormItem(
            label: '朝向',
            value: oriented,
            onChange: (val) {
              setState(() {
                oriented = val;
              });
            },
            options: ['东', '南', '西', '北'],
          ),
          CommonTitle("房屋图像"),
          CommonTitle("房屋标题"),
          CommonTitle("房源信息"),
          CommonTitle("房源信息"),
        ],
      ),
    );
  }
}
