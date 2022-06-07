import 'package:flutter/material.dart';

// 定义字体变量
var loginFontStyle = TextStyle(fontSize: 20.0, color: Colors.white);

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  Widget _noLoginPageHeader(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.green),
      height: 95.0,
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 20.0),
      child: Row(
        children: <Widget>[
          const CircleAvatar(
            // 头像
            backgroundImage: NetworkImage(
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa-ssl.duitang.com%2Fuploads%2Fitem%2F202007%2F22%2F20200722104029_wnhkb.thumb.400_0.jpeg&refer=http%3A%2F%2Fa-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1657164301&t=7b9580c4890dfc9c3ba6c55da511ec2c",
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                    child: Text(
                      "登录",
                      style: loginFontStyle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("rigister");
                    },
                    child: Text("注册", style: loginFontStyle),
                  ),
                ],
              ),
              const Text('登录后可以体验更多', style: TextStyle(color: Colors.white))
            ],
          ),
        ],
      ),
    );
  }

  Widget _loginPageHeader(BuildContext context) {
    String userName = "会飞的青蛙";
    String userImage =
        "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2F58%2Ff9%2F00%2F58f900c9664e8d2ca584ec55e176b796.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1657177143&t=c15543697a45bcc6d7852adde5e2a600";
    return Container(
      decoration: const BoxDecoration(color: Colors.green),
      height: 95.0,
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 20.0),
      child: Row(children: <Widget>[
        Container(
          height: 65.0,
          width: 65.0,
          margin: const EdgeInsets.only(right: 15.0),
          child: CircleAvatar(
            //圆形头像
            backgroundImage: NetworkImage(userImage),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 6.0)),
            Row(
              children: <Widget>[
                Text(userName, style: loginFontStyle),
              ],
            ),
            const Text('查看编辑个人资料', style: TextStyle(color: Colors.white))
          ],
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    var isLogin = true;
    return isLogin ? _loginPageHeader(context) : _noLoginPageHeader(context);
  }
}
