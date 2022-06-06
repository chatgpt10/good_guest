// 搜索栏组件 有状态组件
import 'package:flutter/material.dart';
import 'package:good_guest/widgets/common_image.dart';

class SearchBar extends StatefulWidget {
  // 定义所需要的变量
  final bool? showLocation; //搜索栏是否显示位置信息
  final bool? showMap; // 是否显示地图按钮
  final Function? goBackCallback; // 返回
  final String inputValue; // 搜索框值
  final String defaultInputValue; // 默认显示值
  final Function? onCancel; //取消按钮
  final Function? onSearch; //点击搜索框触发
  final ValueChanged<String>? onSearchSubmit;

  const SearchBar(
      {super.key,
      this.showLocation,
      this.showMap,
      this.goBackCallback,
      this.inputValue = "",
      this.defaultInputValue = "请输入搜索词...",
      this.onCancel,
      this.onSearch,
      this.onSearchSubmit});

  // const SearchBar(
  //   this.showLocation,
  //   this.goBackCallback,
  //   this.onCancel,
  //   this.showMap,
  //   this.onSearch,
  //   this.onSearchSubmit, {
  //   Key? key,
  //   this.inputValue = "",
  //   this.defaultInputValue = "请输入搜索词",
  // }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _searchWord = '';
  late TextEditingController _controller; //输入框的控制器
  late FocusNode _focus; // 输入框焦点声明

  _onClean() {
    _controller.clear(); //清除输入框控制器
    setState(() {
      _searchWord = '';
    });
  }

  @override
  void initState() {
    _focus = FocusNode();
    _controller = TextEditingController(text: widget.inputValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          // 是否显示位置左侧信息
          if (widget.showLocation == true)
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.room, color: Colors.green, size: 16.0),
                    Text(
                      "上海",
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    )
                  ],
                ),
              ),
            ),
          // 是否显示返回图标
          if (widget.goBackCallback != null)
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.chevron_left, color: Colors.black87)
                  ],
                ),
              ),
            ),
          Expanded(
            // 自适应组件
            child: Container(
              height: 34.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17.0),
                  color: Colors.grey.shade200),
              margin: const EdgeInsets.only(right: 10.0),
              child: TextField(
                // 优化焦点显示,返回后焦点不在聚焦
                focusNode: _focus,
                onTap: () {
                  // if (widget.onSearchSubmit == null) {
                  //   _focus.unfocus(); //解决回退失去焦点问题
                  // }
                  if (widget.onSearch == null) {
                    widget.onSearch!(); //使用自己定义的变量方法
                  }
                },
                onSubmitted: widget.onSearchSubmit,
                textInputAction: TextInputAction.search, //按键变为搜索
                controller: _controller, //自己定义的控制器
                onChanged: (String value) {
                  //值改变问题
                  Navigator.of(context).pushNamed('login');
                  setState(() {
                    _searchWord = value;
                  });
                },
                // 优化end
                decoration: InputDecoration(
                    hintText: '请输入搜索词...',
                    border: InputBorder.none,
                    contentPadding:
                        const EdgeInsets.only(top: 2.0, left: -10.0),
                    suffixIcon: GestureDetector(
                      //触摸控件
                      onTap: () {
                        _onClean();
                      },
                      child: Icon(
                        //后置图标
                        Icons.clear,
                        size: 18.0,
                        color: _searchWord == ''
                            ? Colors.grey[200]
                            : Colors.grey, //去图标的技巧:当空时设置为没颜色
                      ),
                    ),
                    icon: const Padding(
                      padding: EdgeInsets.only(top: 3.0, left: 8.0),
                      child: Icon(
                        Icons.search,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    )),
              ),
            ),
          ),
          if (widget.onCancel != null)
            Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                    onTap: () {},
                    child: Row(children: const <Widget>[
                      Text('取消',
                          style: TextStyle(color: Colors.black, fontSize: 14.0))
                    ]))),
          if (widget.showMap != null)
            const CommonImage(src: 'static/icons/widget_search_bar_map.png')
        ],
      ),
    );
  }
}
