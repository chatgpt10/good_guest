import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String RoomId;
  const RoomDetailPage({Key? key, required this.RoomId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("房间详情"),
      ),
      body: Text("房间号:$RoomId"),
    );
  }
}
