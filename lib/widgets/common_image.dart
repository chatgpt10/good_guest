// 封装图片组件 用于判断图片是网络还是本地
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_networkimage_2/provider.dart';

// 定义判断正则
final networkUrlRef = RegExp('^http'); //网络图片
final localworkUrlRef = RegExp('^static'); //网络图片

// 创建图片类
class CommonImage extends StatelessWidget {
  final String src;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const CommonImage({
    super.key,
    required this.src,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    // 判断图片的来源
    if (networkUrlRef.hasMatch(src)) {
      // 如果是在线图片
      return Image(
        width: width,
        height: height,
        fit: fit,
        image: AdvancedNetworkImage(src,
            useDiskCache: true, //磁盘缓存
            cacheRule: const CacheRule(maxAge: Duration(days: 7)), //保存时间
            timeoutDuration: const Duration(seconds: 20) //超时时间
            ),
      );
    } else if (localworkUrlRef.hasMatch(src)) {
      return Image.asset(
        src,
        width: width,
        height: height,
        fit: fit,
      );
    }
    assert(false, "图片地址不合法"); //抛出异常
    return Container();
  }
}
