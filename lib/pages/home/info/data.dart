// 资讯页面的静态数据
class InfoItem {
  final String title;
  final String imageUrl;
  final String source;
  final String time;
  final String navigateUrl;
  const InfoItem(
      {required this.title,
      required this.imageUrl,
      required this.source,
      required this.time,
      required this.navigateUrl});
}

// 定义数据
const List<InfoItem> infoData = [
  InfoItem(
    title: "莲溪苑 | 四室一厅 浦东新区,临近地铁,临近学区,临近商圈",
    imageUrl:
        'https://wx2.sinaimg.cn/mw1024/005SQLxwly1g6f89l4obbj305v04fjsw.jpg',
    source: "上海发布",
    time: "两天前",
    navigateUrl: 'login',
  ),
  InfoItem(
      title: '置业佳选 | 大理王宫 苍山洱海间的古雅别院',
      imageUrl:
          'https://wx2.sinaimg.cn/mw1024/005SQLxwly1g6f89l6hnsj305v04fab7.jpg',
      source: "新华网",
      time: "一周前",
      navigateUrl: 'login'),
  InfoItem(
      title: '置业选择 | 安居小屋 花园洋房 清新别野',
      imageUrl:
          'https://wx4.sinaimg.cn/mw1024/005SQLxwly1g6f89l5jlyj305v04f75q.jpg',
      source: "新华网",
      time: "一周前",
      navigateUrl: 'login'),
  InfoItem(
      title: '置业选择 | 安居小屋 花园洋房 清新别野 山清水秀',
      imageUrl:
          'https://wx4.sinaimg.cn/mw1024/005SQLxwly1g6f89l5jlyj305v04f75q.jpg',
      source: "新华网",
      time: "一周前",
      navigateUrl: 'login'),
  InfoItem(
      title: '置业选择 | 安居小屋 花园洋房 清新别野',
      imageUrl:
          'https://wx4.sinaimg.cn/mw1024/005SQLxwly1g6f89l5jlyj305v04f75q.jpg',
      source: "新华网",
      time: "一周前",
      navigateUrl: 'login'),
];
